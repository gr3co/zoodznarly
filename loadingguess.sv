module loadGuess(
	input logic [11:0] Guess,
	input logic loadGuessNow, reset, CLOCK_50,
	output logic [3:0] guess0, guess1, guess2, guess3
	);
	
	register #(3) g0(Guess[2:0],  loadGuessNow, reset, CLOCK_50, guess0);
	register #(3) g1(Guess[5:3],  loadGuessNow, reset, CLOCK_50, guess1);
	register #(3) g2(Guess[8:6],  loadGuessNow, reset, CLOCK_50, guess2);
	register #(3) g3(Guess[11:9], loadGuessNow, reset, CLOCK_50, guess3);

endmodule: loadGuess