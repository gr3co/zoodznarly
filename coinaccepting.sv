`default_nettype none

module topCoinAccept(
	input logic [1:0] CoinValue,
	input logic CoinInserted, reset, CLOCK_50, startGameNow, masterLoaded, gamePlaying,
	output logic ready,
	output logic [3:0] NumGames
	);
	
	logic drop, gt, lt, adderIn, en_reg;
	logic [3:0] numGamesIn;
	
	assign en_reg = startGameNow | drop;
	assign ready = gt&masterLoaded&(~gamePlaying); //ready to play
	//assign adderIn = (startGameNow) ? -1 : (drop&lt) ? 1 : 0; 
	
	assign numGamesIn = (startGameNow) ? NumGames - 1 : (drop & lt) ? NumGames + 1 : NumGames;
	
	coinAccept ca(.*);
	//adder #(4) a1(adderIn, NumGames, 0, numGamesIn,);
	register #(4) r1(numGamesIn, en_reg, reset, CLOCK_50, NumGames);
	comparator #(4) c1(, , gt, NumGames, 0);
	comparator #(4) c2(lt,,, NumGames, 7);
	
endmodule: topCoinAccept

module coinAccept(
    input logic reset, CoinInserted, CLOCK_50,
	 input logic [1:0] CoinValue,
	 output logic drop
	 );

	 logic [1:0] coin;
	 assign coin = CoinValue;
    
   enum logic [2:0] {d0ch0 = 3'd0, d0ch1 = 3'd1, d0ch2 = 3'd2, d0ch3 = 3'd3, 
                     d1ch0 = 3'd4, d1ch1 = 3'd5, d1ch2 = 3'd6, d1ch3 = 3'd7}
                     currState, nextState;

    //next state logic
    always_comb
        case(currState)
            d0ch0, d1ch0: unique case(coin)
                2'd0: nextState = d0ch0;
                2'd1: nextState = goNow ? d0ch1 : d0ch0;
                2'd2: nextState = goNow ? d0ch3 : d0ch0;
                2'd3: nextState = goNow ? d1ch1 : d0ch0;
                endcase
            d0ch1, d1ch1: unique case(coin)
                2'd0: nextState = d0ch1; 
                2'd1: nextState = goNow ? d0ch2 : d0ch1;
                2'd2: nextState = goNow ? d1ch0 : d0ch1;
                2'd3: nextState = goNow ? d1ch2 : d0ch1;
                endcase
            d0ch2, d1ch2: unique case(coin)
                2'd0: nextState = d0ch2;
                2'd1: nextState = goNow ? d0ch3 : d0ch2;
                2'd2: nextState = goNow ? d1ch1 : d0ch2;
                2'd3: nextState = goNow ? d1ch3 : d0ch2;
                endcase
            d0ch3, d1ch3: unique case(coin)
                2'd0: nextState = d0ch3;
                2'd1: nextState = goNow ? d1ch0 : d0ch3;
                2'd2: nextState = goNow ? d1ch2 : d0ch3;
                2'd3: nextState = goNow ? d1ch0 : d0ch3;
                endcase
            default: nextState = d0ch0;
        endcase

    //output logic
    always_comb
        case(currState)
            d0ch0, d0ch1, d0ch2, d0ch3: drop = 0;
            d1ch0, d1ch1, d1ch2, d1ch3: drop = 1;
            default: drop = 0;
        endcase

	 logic prevCoinInserted, prevPrevCoinInserted, goNow;
    always_ff @(posedge CLOCK_50, posedge reset) begin
       if (reset == 1)
         currState <= d0ch0;
       else begin
         currState <= nextState;
			prevCoinInserted <= CoinInserted;
			prevPrevCoinInserted <= prevCoinInserted;
			goNow <= prevCoinInserted & ~prevPrevCoinInserted;
		end
	end
endmodule: coinAccept