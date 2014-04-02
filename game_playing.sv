`default_nettype none

module game_playing(
	input logic ready, StartGame, GameOver, CLOCK_50, reset,
	output logic startGameNow, gamePlaying, resetMaster
	);

	enum logic [1:0] {waitingtoplay = 2'd0, ingame = 2'd1, backtowaiting = 2'd2}
                     currState, nextState;

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
				waitingtoplay: begin gamePlaying = 0; resetMaster = 0; end
				ingame: begin gamePlaying = 1; resetMaster = 0; end
				backtowaiting: begin gamePlaying = 0; resetMaster = 1; end
            default: gamePlaying = 0;
        endcase
    end

	 logic prevstartGame, prevprevstartGame;
    always_ff @(posedge CLOCK_50, posedge reset) begin
       if (reset == 1)
         currState <= waitingtoplay;
       else begin
         currState <= nextState;
			prevstartGame <= StartGame;
			prevprevstartGame <= prevstartGame;
			startGameNow <= prevstartGame & ~prevprevstartGame & ready;
		end
	end
	
endmodule: game_playing