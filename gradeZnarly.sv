module GradeZnarly(
	input logic GradeZnarlyNow, CLOCK_50, reset, gamePlaying,
	input logic [2:0] guess0, guess1, guess2, guess3,
	input logic [2:0] master0, master1, master2, master3,
	input logic [3:0] RoundNumber,
	output logic [3:0] Znarly,
	output logic GameWonOut,
	output logic [3:0] seenOutZnarly
	);
	
	logic [3:0] rsrl, seen;
	logic eq0, eq1, eq2, eq3, eqgw;
	assign seen = {eq3, eq2, eq1, eq0};
	
	assign rsrl = (gamePlaying) ? eq0+eq1+eq2+eq3 : 0;

	comparator #(4) gm0(, eq0, , guess0, master0);
	comparator #(4) gm1(, eq1, , guess1, master1);
	comparator #(4) gm2(, eq2, , guess2, master2);
	comparator #(4) gm3(, eq3, , guess3, master3);
	comparator #(4) gw(, eqgw, , rsrl, 4);
	
	always @(posedge CLOCK_50, posedge reset) 
		if (reset)begin
			Znarly <= 0;
			GameWonOut <= 0;
			seenOutZnarly <= 0;
		end
		else if (GradeZnarlyNow)begin
			Znarly <= rsrl;
			GameWonOut <= eqgw;
			seenOutZnarly <= seen;
		end
		else if (~gamePlaying)begin
			Znarly <= 0;
			GameWonOut <= eqgw;
			seenOutZnarly <= 0;
		end
	
endmodule: GradeZnarly