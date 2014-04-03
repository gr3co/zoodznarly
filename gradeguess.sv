module GradeGuessTop(
	input logic [11:0] Guess,
	input logic [2:0] master0, master1, master2, master3,
	input logic CLOCK_50, reset, GradeIt, gamePlaying, resetMaster, clearMaster,
	output logic [3:0] Znarly, Zood, RoundNumber,
	output logic GameWonOut, GameOver,
	output logic [3:0] seenOutZood,
	output logic [6:0] HEX7, HEX6, HEX5, HEX4
	);
	
	logic GradeZnarlyNow, GradeZoodNow, loadGuessNow, zoodDone, clr;
	logic [2:0] guess0, guess1, guess2, guess3;
	logic [3:0] seenOutZnarly, resetRegister;
	
	logic zn0, zn1, zn2, zn3, IncRoundNumber;
	logic [3:0] SOZood, sum;
	
	assign {zn3, zn2, zn1, zn0} = seenOutZood;
	assign SOZood = zn3+zn2+zn1+zn0;
	assign Zood = (gamePlaying) ? SOZood : 0;
	assign clr = clearMaster | resetMaster;
	
	BCDtoSevenSegment wtf234234(HEX6, seenOutZood);
	BCDtoSevenSegment fuckinA(HEX5, seenOutZnarly);
   BCDtoSevenSegment wtf2(HEX4, 0);
	BCDtoSevenSegment wtf3(HEX7, 0);
	
	
	GradeZnarly     gzn(.*);
	GradeZood       gz0(.*);
	guessControlFsm gcfsm(.*);
	loadGuess       lg(.*);

	
	//keep track of round number
	register #(4)   rn(sum, IncRoundNumber, clr, CLOCK_50, RoundNumber);
	adder #(4)      ad(1, RoundNumber, 0, sum, );

	assign GameOver = GameWonOut | (RoundNumber == 8);
	
endmodule: GradeGuessTop

module guessControlFsm(
	input logic GradeIt, CLOCK_50, reset, gamePlaying, zoodDone,
	output logic loadGuessNow, GradeZnarlyNow, GradeZoodNow, IncRoundNumber
	);
	
	enum logic [2:0] {waitingS = 3'd0, loadGuessS = 3'd1, gradeZnarlyS = 3'd2, gradeZoodS = 3'd3, doneS = 3'd4}
                     currState, nextState;
							
	
	 //next state and output logic
    always_comb begin
		  IncRoundNumber = 0;
        case(currState)
            waitingS: begin 
					nextState = (GradeItNow) ? loadGuessS : waitingS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
					IncRoundNumber = 0;
				end
				loadGuessS: begin
					nextState = gradeZnarlyS;
					loadGuessNow = 1;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
					IncRoundNumber = 0;
				end
				gradeZnarlyS: begin
					//TEMPORARY: skipping over gradeZood
					nextState = gradeZoodS;
					//nextState = doneS;
					loadGuessNow = 0;
					GradeZnarlyNow = 1;
					GradeZoodNow = 0;
					IncRoundNumber = 0;
				end
				gradeZoodS: begin
					nextState = zoodDone ? doneS : gradeZoodS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 1;
					IncRoundNumber = 0;
				end
				doneS: begin
					nextState = waitingS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
					IncRoundNumber = 1;
				end
				default: begin
					nextState = waitingS;
					loadGuessNow = 0;
					GradeZnarlyNow = 0;
					GradeZoodNow = 0;
					IncRoundNumber = 0;
				end
        endcase
	 end

	 logic prevGradeIt, prevPrevGradeIt, GradeItNow;
    always_ff @(posedge CLOCK_50, posedge reset)
        if (reset)
            currState <= waitingS;
        else begin
            currState <= nextState;
				prevGradeIt <= GradeIt;
				prevPrevGradeIt <= prevGradeIt;
				GradeItNow <= prevGradeIt & ~prevPrevGradeIt & gamePlaying;
			end
		
endmodule: guessControlFsm

module loadGuess(
	input logic [11:0] Guess,
	input logic loadGuessNow, clearMaster, CLOCK_50, resetMaster,
	output logic [2:0] guess0, guess1, guess2, guess3
	);
	
	logic resetG;
	assign resetG = clearMaster | resetMaster;
	register #(3) g0(Guess[2:0],  loadGuessNow, resetG, CLOCK_50, guess0);
	register #(3) g1(Guess[5:3],  loadGuessNow, resetG, CLOCK_50, guess1);
	register #(3) g2(Guess[8:6],  loadGuessNow, resetG, CLOCK_50, guess2);
	register #(3) g3(Guess[11:9], loadGuessNow, resetG, CLOCK_50, guess3);

endmodule: loadGuess