module GradeZood(
	input logic GradeZoodNow, CLOCK_50, reset, clearMaster,
	input logic [2:0] master0, master1, master2, master3,
	input logic [2:0] guess0, guess1, guess2, guess3,
	input logic [3:0] seenOutZnarly,
	output logic [3:0] seenOutZood,
	output logic zoodDone
	);
	
	
	logic [3:0] seenOutZoodReg, zoodFinal;
	logic [2:0] guessAtIndex;
	logic [1:0] index;
	logic indexDone, gradeZoodIndexNow, changeSOZ, resetSeenOutZoodReg;
	
	GradeZoodIndex idg(.*);
	
	enum logic [2:0] {waiting = 3'd0, changeZ = 3'd5, done=3'd6,  check0 = 3'd1, check1 = 3'd2, check2 = 3'd3, check3 = 3'd4} currentState, nextState;
	
		//next state logic
	always_comb
		case (currentState)
			waiting: nextState = (~GradeZoodNow) ? waiting : (seenOutZnarly[0] == 0) ? check0 : (seenOutZnarly[1] == 0) ? check1 : (seenOutZnarly[2] == 0) ? check2 : (seenOutZnarly[3] == 0) ? check3 : changeZ;
			check0: nextState = (~indexDone) ? check0 : (seenOutZnarly[1] == 0) ? check1 : (seenOutZnarly[2] == 0) ? check2 : (seenOutZnarly[3] == 0) ? check3 : changeZ;
			check1: nextState = (~indexDone) ? check1 : (seenOutZnarly[2] == 0) ? check2 : (seenOutZnarly[3] == 0) ? check3 : changeZ;
			check2: nextState = (~indexDone) ? check2 : (seenOutZnarly[3] == 0) ? check3 : changeZ;
			check3: nextState = (~indexDone) ? check3 : changeZ;
			changeZ: nextState = done;
			done: nextState = waiting;
		endcase
		
	//output logic
	always_comb begin
			changeSOZ = 0;
			index = 0;
			zoodDone = 0;
			gradeZoodIndexNow = 1;
			guessAtIndex = 0;
			resetSeenOutZoodReg = 0;
			case (currentState)
				waiting: begin
					resetSeenOutZoodReg = 1;
					index = 0;
					gradeZoodIndexNow = 0;
					end
				check0: begin 
					index = 0;
					guessAtIndex = guess0;
					end
				check1: begin 
					index = 1;
					guessAtIndex = guess1;
					end
				check2: begin 
					index = 2;
					guessAtIndex = guess2;
					end
				check3: begin 
					index = 3;
					guessAtIndex = guess3;
					end
				changeZ: begin
					changeSOZ = 1;
					gradeZoodIndexNow = 0;
					end
				done: begin 
					zoodDone = 1;
					gradeZoodIndexNow = 0;
					end
			endcase
		end
		
		always_ff @(posedge CLOCK_50, posedge reset)
        if (reset)
            currentState <= waiting;
        else  begin 
		      if (changeSOZ) begin
					seenOutZood <= zoodFinal;
				end
				else if (resetSeenOutZoodReg)
					zoodFinal <= 0;
				currentState <= nextState;
				zoodFinal <= seenOutZoodReg;
		  end
				
endmodule: GradeZood

module GradeZoodIndex(
	input logic gradeZoodIndexNow, CLOCK_50, reset, clearMaster, resetSeenOutZoodReg,
	input logic [2:0] guessAtIndex,
	input logic [2:0] master0, master1, master2, master3,
	input logic [1:0] index,
	input logic [3:0] seenOutZood, zoodFinal, seenOutZnarly,
	output logic [3:0] seenOutZoodReg,
	output logic indexDone
	);
	
	logic seenMatch, seenMatchReg; //seenMatchReg-->have we seen a match so far as we've walked through
	logic  resetZGT, timeToLoad;
	logic [1:0] updateIndex;
	logic [3:0] seenInternal;
	enum logic [2:0] {waiting = 3'd0, done=3'd5,  check0 = 3'd1, check1 = 3'd2, check2 = 3'd3, check3 = 3'd4} currentState, nextState;
		
	zoodGradeTracker zgt(.*);
	
	//next state logic
	always_comb
		case (currentState)
			waiting: nextState = (~gradeZoodIndexNow) ? waiting : (index == 0 | zoodFinal[0]) ? check1 : check0;
			check0: nextState = (index == 1 | zoodFinal[1]) ? check2 : check1;
			check1: nextState = (index == 2 | zoodFinal[2]) ? check3 : check2;
			check2: nextState = (index == 3 | zoodFinal[3]) ? done : check3;
			check3: nextState = done;
			done: nextState = waiting;
			default: nextState = waiting;
		endcase
		
	//output logic
	always_comb begin
		seenMatch = 0;
		indexDone = 0;
		resetZGT = 0;
		updateIndex = 0;
		timeToLoad = 1;
		case (currentState)
			waiting: begin
				resetZGT = 1;
				timeToLoad = 0;
				end
			check0: begin 
				seenMatch = ((~seenMatchReg & (guessAtIndex == master0) & ~seenOutZnarly[0]) | seenOutZoodReg[0]) ? 1 : 0;
				updateIndex = 0;
				end
			check1: begin 
				seenMatch = ((~seenMatchReg & (guessAtIndex == master1) & ~seenOutZnarly[1]) | seenOutZoodReg[1]) ? 1 : 0;
				updateIndex = 1;
				end
			check2: begin 
				seenMatch = ((~seenMatchReg & (guessAtIndex == master2) & ~seenOutZnarly[2]) | seenOutZoodReg[2]) ? 1 : 0;
				updateIndex = 2;
				end
			check3: begin
				seenMatch = ((~seenMatchReg & (guessAtIndex == master3) & ~seenOutZnarly[3]) | seenOutZoodReg[3]) ? 1 : 0;
				updateIndex = 3;
				end
			done: begin 
				indexDone = 1;
				timeToLoad = 0;
				end
	   endcase
	end
		
		always_ff @(posedge CLOCK_50, posedge reset)
        if (reset) begin
            currentState <= waiting;
				seenMatchReg <= 0;
				end
        else begin 
				currentState <= nextState;
				if (resetZGT)
					seenMatchReg <= 0;
				else if (seenMatchReg == 0)
					seenMatchReg <= seenMatch;
		end
		
endmodule: GradeZoodIndex

module zoodGradeTracker(
	input logic CLOCK_50, seenMatch, timeToLoad, resetSeenOutZoodReg, clearMaster,
	input logic [1:0] updateIndex,
	output logic [3:0] seenOutZoodReg);
	
	logic [3:0] decOut;
	logic l0, l1, l2, l3, so0, so1, so2, so3, resetM;
	assign resetM = clearMaster | resetSeenOutZoodReg;
	assign l0 = timeToLoad&decOut[0];
	assign l1 = timeToLoad&decOut[1];
	assign l2 = timeToLoad&decOut[2];
	assign l3 = timeToLoad&decOut[3];
	assign seenOutZoodReg = {so3, so2, so1, so0};
	
	register #(1) m0(seenMatch, l0, resetM, CLOCK_50, so0);
	register #(1) m1(seenMatch, l1, resetM, CLOCK_50, so1);
	register #(1) m2(seenMatch, l2, resetM, CLOCK_50, so2);
	register #(1) m3(seenMatch, l3, resetM, CLOCK_50, so3);
	decoder  #(4) d1(updateIndex, 1, decOut);
	
endmodule: zoodGradeTracker