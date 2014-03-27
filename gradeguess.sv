module GradeGuessTop(
	input logic [11:0] Guess,
	input logic [2:0] master0, master1, master2, master3,
	input logic CLOCK_50, reset, GradeIt, ready,
	output logic [3:0] Znarly, Zood, RoundNumber,
	output logic GameWon, GameOver
	);
	
	logic GradeZnarlyNow, GradeZoodNow, loadGuessNow, zoodDone;
	logic [2:0] guess0, guess1, guess2, guess3;
	logic [3:0] seenOutZnarly, seenOutZood, seenIn, addIn;
	assign seenIn = seenOutZnarly;
	
	logic zn0, zn1, zn2, zn3, IncRoundNumber;
	logic [3:0] ZoodandZnarly, sum;
	assign {zn3, zn2, zn1, zn0} = seenOutZood;
	assign ZoodandZnarly = zn3+zn2+zn1+zn0;
	assign Zood = (RoundNumber > 0) ?(ZoodandZnarly - Znarly) : 0;
	
	GradeZnarly     gzn(.*);
	GradeZood       gz0(.*);
	guessControlFsm gcfsm(.*);
	loadGuess       lg(.*);

	
	//keep track of round number
	register #(4)   rn(sum, IncRoundNumber, reset, CLOCK_50, RoundNumber);
	adder #(4)      ad(addIn, RoundNumber, 0, sum, );

	assign GameOver = GameWon | (RoundNumber == 8);
	assign addIn = (~GameOver) ? 1 : 8;
	
endmodule: GradeGuessTop

module GradeZnarly(
	input logic GradeZnarlyNow,
	input logic [2:0] guess0, guess1, guess2, guess3,
	input logic [2:0] master0, master1, master2, master3,
	input logic [3:0] RoundNumber,
	output logic [3:0] Znarly,
	output logic GameWon,
	output logic [3:0] seenOutZnarly
	);
	
	logic [3:0] rsrl, seen;
	logic eq0, eq1, eq2, eq3, eqgw;
	assign seen = {eq3, eq2, eq1, eq0};
	
	assign rsrl = (RoundNumber > 0) ? eq0+eq1+eq2+eq3 : 0;

	comparator #(4) gm0(, eq0, , guess0, master0);
	comparator #(4) gm1(, eq1, , guess1, master1);
	comparator #(4) gm2(, eq2, , guess2, master2);
	comparator #(4) gm3(, eq3, , guess3, master3);
	comparator #(4) gw(, eqgw, , rsrl, 4);
	
	always @(posedge GradeZnarlyNow) begin
		Znarly <= rsrl;
		GameWon <= eqgw;
		seenOutZnarly <= seen;
	end
	
endmodule: GradeZnarly

module GradeZood(
	input logic GradeZoodNow, CLOCK_50, reset,
	input logic [2:0] master0, master1, master2, master3,
	input logic [3:0] seenIn,
	output logic [3:0] seenOutZood,
	output logic zoodDone
	);
	
	logic [3:0] seenInternalIn, seenInternalOut;
	logic [2:0] guessAtIndex;
	logic [1:0] index;
	logic indexDone, gradeZoodIndexNow;
	
	GradeZoodIndex(
	gradeZoodIndexNow,
	guessAtIndex,
	master0, master1, master2, master3,
	seenInternalIn,
	index,
	seenInternalOut,
	indexDone
	);
	
	enum logic [2:0] {waiting = 3'd4, done=3'd5,  check0 = 3'd0, check1 = 3'd1, check2 = 3'd2, check3 = 3'd3} currentState, nextState;
	
		//next state logic
	always_comb
		case (currentState)
			waiting: nextState = (~GradeZoodNow) ? waiting : (seenIn[0] != 0) ? check0 : check1;
			check0: nextState = (~indexDone) ? check0 : (seenIn[1] != 0) ? check1 : check2;
			check1: nextState = (~indexDone) ? check1 : (seenIn[2] != 0) ? check2 : check3;
			check2: nextState = (~indexDone) ? check2 : (seenIn[3] != 0) ? check3 : done;
			check3: nextState = (~indexDone) ? check3 : done;
			done: nextState = waiting;
		endcase
		
	//output logic
	always_comb begin
			seenOutZood = 0;
			index = 0;
			seenInternalIn = 0;
			case (currentState)
				waiting: begin
					seenInternalIn = seenIn;
					index = 0;
					zoodDone = 0;
					gradeZoodIndexNow = 0;
					end
				check0: begin 
					seenInternalIn = seenInternalOut;
					index = 0;
					zoodDone = 0;
					gradeZoodIndexNow = 1;
					end
				check1: begin 
					seenInternalIn = seenInternalOut;
					index = 1;
					zoodDone = 0;
					gradeZoodIndexNow = 1;
					end
				check2: begin 
					seenInternalIn = seenInternalOut;
					index = 2;
					zoodDone = 0;
					gradeZoodIndexNow = 1;
					end
				check3: begin 
					seenInternalIn = seenInternalOut;
					index = 3;
					zoodDone = 0;
					gradeZoodIndexNow = 1;
					end
				done: begin 
					seenOutZood = seenInternalOut;
					zoodDone = 1;
					gradeZoodIndexNow = 0;
					end
			endcase
		end
		
		always_ff @(posedge CLOCK_50, posedge reset)
        if (reset)
            currentState <= waiting;
        else
            currentState <= nextState;
	
endmodule: GradeZood

module GradeZoodIndex(
	input logic gradeZoodIndexNow, CLOCK_50, reset,
	input logic [2:0] guessAtIndex,
	input logic [2:0] master0, master1, master2, master3,
	input logic [3:0] seenIn,
	input logic [1:0] index,
	output logic [3:0] seenOut,
	output logic indexDone
	);
	
	logic seenMatch;
	logic [3:0] seenInternal;
	enum logic [2:0] {waiting = 3'd4, done=3'd5,  check0 = 3'd0, check1 = 3'd1, check2 = 3'd2, check3 = 3'd3} currentState, nextState;
	
	//next state logic
	always_comb
		case (currentState)
			waiting: nextState = (~gradeZoodIndexNow) ? waiting : (index != 0) ? check0 : check1;
			check0: nextState = (index != 1) ? check1 : check2;
			check1: nextState = (index != 2) ? check2 : check3;
			check2: nextState = (index != 3) ? check3 : done;
			check3: nextState = done;
			done: nextState = waiting;
			default: nextState = waiting;
		endcase
		
	//output logic
	always_comb begin
		seenOut = 0;
		seenMatch = 0;
		seenInternal = 0;
		case (currentState)
			waiting: begin
				seenInternal = seenIn;
				seenMatch = 0;
				indexDone = 0;
				end
			check0: begin 
				seenMatch = (~seenMatch & (guessAtIndex == master0)) ? 1 : 0;
				seenInternal[0] = seenMatch;
				indexDone = 0;
				end
			check1: begin 
				seenMatch = (~seenMatch & (guessAtIndex == master1)) ? 1 : 0;
				seenInternal[1] = seenMatch;
				indexDone = 0;
				end
			check2: begin 
				seenMatch = (~seenMatch & (guessAtIndex == master2)) ? 1 : 0;
				seenInternal[2] = seenMatch;
				indexDone = 0;
				end
			check3: begin 
				seenMatch = (~seenMatch & (guessAtIndex == master3)) ? 1 : 0;
				seenInternal[3] = seenMatch;
				indexDone = 0;
				end
			done: begin 
				seenOut = seenInternal;
				indexDone = 1;
				end
	   endcase
	end
		
		always_ff @(posedge CLOCK_50, posedge reset)
        if (reset)
            currentState <= waiting;
        else
            currentState <= nextState;
			

endmodule: GradeZoodIndex

module guessControlFsm(
	input logic GradeIt, CLOCK_50, reset, ready, zoodDone,
	output logic loadGuessNow, GradeZnarlyNow, GradeZoodNow, IncRoundNumber);
	
	enum logic [2:0] {waitingS = 3'd0, loadGuessS = 3'd1, gradeZnarlyS = 3'd2, gradeZoodS = 3'd3, doneS = 3'd4}
                     currState, nextState;
	
	 //next state and output logic
    always_comb begin
		  IncRoundNumber = 0;
        case(currState)
            waitingS: begin 
					nextState = (GradeIt&ready) ? loadGuessS : waitingS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
				end
				loadGuessS: begin
					nextState = gradeZnarlyS;
					loadGuessNow = 1;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
				end
				gradeZnarlyS: begin
					nextState = gradeZoodS;
					loadGuessNow = 0;
					GradeZnarlyNow = 1;
					GradeZoodNow = 0;
				end
				gradeZoodS: begin
					nextState = zoodDone ? doneS : gradeZoodS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 1;
				end
				doneS: begin
					nextState = waitingS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 1;
				end
				default: begin
					nextState = waitingS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
					IncRoundNumber = 1;
				end
        endcase
	 end

    always_ff @(posedge CLOCK_50, posedge reset)
        if (reset)
            currState <= waitingS;
        else
            currState <= nextState;
	
endmodule: guessControlFsm

module loadGuess(
	input logic [11:0] Guess,
	input logic loadGuessNow, reset, CLOCK_50,
	output logic [2:0] guess0, guess1, guess2, guess3
	);
	
	register #(3) g0(Guess[2:0],  loadGuessNow, reset, CLOCK_50, guess0);
	register #(3) g1(Guess[5:3],  loadGuessNow, reset, CLOCK_50, guess1);
	register #(3) g2(Guess[8:6],  loadGuessNow, reset, CLOCK_50, guess2);
	register #(3) g3(Guess[11:9], loadGuessNow, reset, CLOCK_50, guess3);

endmodule: loadGuess