`default_nettype none

module chipInterface(
	input logic [17:0] SW,
	input logic [3:0] KEY,
	input logic CLOCK_50,
	output logic [6:0] HEX0, HEX1, HEX2, HEX3,
	output logic [7:0] LEDG,
	output logic [7:0] VGA_R, VGA_G, VGA_B,
	output logic VGA_BLANK_N, VGA_CLK, VGA_SYNC_N,
	output logic VGA_VS, VGA_HS
);

	//official wires
	logic CoinInserted, StartGame, GradeIt, LoadShapeNow, GameWon, reset, debug;
	logic [1:0] CoinValue, ShapeLocation;
	logic [2:0] LoadShape;
	logic [3:0] NumGames, RoundNumber, Znarly, Zood;
	logic [11:0] Guess;
	
	//internal wires
	logic masterLoaded, ready, GameOver, gamePlaying;
	logic [2:0] master0, master1, master2, master3;
	
	//their assignments
	assign CoinValue = SW[17:16];
	assign CoinInserted = ~KEY[1];
	assign StartGame = ~KEY[2];
	assign Guess = SW[11:0];
	assign GradeIt = ~KEY[3];
	assign LoadShape = SW[2:0];
	assign ShapeLocation = SW[4:3];
	assign LoadShapeNow = ~KEY[3];
	assign debug = SW[15];
	assign reset = ~KEY[0];
	assign LEDG[0] = GameWon;
	assign LEDG[1] = GameOver;
	assign LEDG[2] = ready;
	BCDtoSevenSegment zn(HEX3, Znarly);
	BCDtoSevenSegment zo(HEX2, Zood);
	BCDtoSevenSegment rn(HEX1, RoundNumber);
	BCDtoSevenSegment ng(HEX0, NumGames);
	
	topCoinAccept  tca(.*);
	loadMaster     lms(.*);
	GradeGuessTop  ggt(.*);
	assign gamePlaying = (RoundNumber > 0);
	
	/*mastermindVGA mm(CLOCK_50, VGA_R, VGA_G, VGA_B, VGA_BLANK_N,
							VGA_CLK, VGA_SYNC_N, VGA_VS, VGA_HS,
							NumGames, LoadNumGames, RoundNumber, Guess,
							LoadGuess, Znarly, Zood, LoadZnarlyZood, 
							clearGame, masterPattern, displayMasterPattern, reset);*/

endmodule: chipInterface

module BCDtoSevenSegment
(output logic [6:0] segment,
input logic [3:0] bcd);
	logic w, x, y, z;
	assign {w, x, y, z} = bcd;

	assign segment[6] = ~w&~x&~y | ~w&x&y&z;
	assign segment[5] = w&x | y&z | w&y |  ~x&y | ~w&~x&z;
	assign segment[4] = z | w&y | x&~y;
	assign segment[3] = z&w | w&y | x&y&z | x&~y&~z | ~y&z&~x;
	assign segment[2] = w&x | w&y | ~x&y&~z;
	assign segment[1] = w&x | w&y | x&~y&z | x&y&~z;
	assign segment[0] = w&x | w&y | x&~y&~z | ~w&~x&~y&z;
endmodule: BCDtoSevenSegment