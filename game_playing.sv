`default_nettype none

module game_playing(
	input logic ready, StartGame, GameOver, CLOCK_50, reset, GameWonOut,
	output logic startGameNow, gamePlaying, resetMaster, GameWon
	);

	enum logic [1:0] {waitingtoplay = 2'd0, ingame = 2'd1, backtowaiting = 2'd2}
                     currState, nextState;

	 logic GameWonInt;
    //next state logic
    always_comb
        case(currState)
            waitingtoplay: nextState = (startGameNow) ? ingame : waitingtoplay;
				ingame: nextState = (GameOver) ? backtowaiting : ingame;
				backtowaiting: nextState = waitingtoplay;
            default: nextState = waitingtoplay;
        endcase

    //output logic
    always_comb begin
        case(currState)
				waitingtoplay: begin gamePlaying = 0; resetMaster = 0; GameWonInt = GameWon; end
				ingame: begin gamePlaying = 1; resetMaster = 0; GameWonInt = 0; end
				backtowaiting: begin gamePlaying = 0; resetMaster = 1; GameWonInt = GameWonOut; end
            default: gamePlaying = 0;
        endcase
    end

	 logic prevstartGame, prevprevstartGame;
    always_ff @(posedge CLOCK_50, posedge reset) begin
       if (reset == 1) begin
         GameWon <= 0;
			currState <= waitingtoplay;
			end
       else begin
			GameWon <= GameWonInt;
         currState <= nextState;
			prevstartGame <= StartGame;
			prevprevstartGame <= prevstartGame;
			startGameNow <= prevstartGame & ~prevprevstartGame & ready;
		end
	end
	
endmodule: game_playing