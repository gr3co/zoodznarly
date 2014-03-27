module topCoinAccept(
	input logic [1:0] CoinValue,
	input logic CoinInserted, reset, CLOCK_50, StartGame, masterLoaded,
	input logic [3:0] RoundNumber,
	output logic ready,
	output logic [3:0] NumGames);
	
	logic drop, gt, adderIn;
	logic [3:0] numGamesIn;
	
	assign ready = gt&masterLoaded&(RoundNumber==0);
	assign adderIn = (drop&~ready) ? 1 : (~drop&ready) ? 4'hf : 0;
	
	coinAccept ca(.*);
	adder #(4) a1(adderIn, NumGames, 0, numGamesIn,);
	register #(4) r1(numGamesIn, drop, reset, CLOCK_50, NumGames);
	comparator #(4) c1(, , gt, NumGames, 0);
	
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
			
	logic [3:0] credit;

    //next state logic
    always_comb
        case(currState)
            d0ch0, d1ch0: unique case(coin)
                2'd0: nextState = d0ch0;
                2'd1: nextState = d0ch1;
                2'd2: nextState = d0ch3;
                2'd3: nextState = d1ch1;
                endcase
            d0ch1, d1ch1: unique case(coin)
                2'd0: nextState = d0ch1; 
                2'd1: nextState = d0ch2;
                2'd2: nextState = d1ch0;
                2'd3: nextState = d1ch2;
                endcase
            d0ch2, d1ch2: unique case(coin)
                2'd0: nextState = d0ch2;
                2'd1: nextState = d0ch3;
                2'd2: nextState = d1ch1;
                2'd3: nextState = d1ch3;
                endcase
            d0ch3, d1ch3: unique case(coin)
                2'd0: nextState = d0ch3;
                2'd1: nextState = d1ch0;
                2'd2: nextState = d1ch2;
                2'd3: nextState = d1ch0;
                endcase
            default: nextState = d0ch0;
        endcase

    //output logic
    always_comb begin
        case(currState)
            d0ch0, d1ch0: credit = 0;
            d0ch1, d1ch1: credit = 1;
            d0ch2, d1ch2: credit = 2;
            d0ch3, d1ch3: credit = 3;
            default: credit = 0;
        endcase
        case(currState)
            d0ch0, d0ch1, d0ch2, d0ch3: drop = 0;
            d1ch0, d1ch1, d1ch2, d1ch3: drop = 1;
            default: drop = 0;
        endcase
    end

	 logic prevCoinInserted;
    always_ff @(posedge CLOCK_50, posedge reset) begin
       if (reset == 1)
            currState <= d0ch0;
       else if (CoinInserted & ~prevCoinInserted)
            currState <= nextState;
		 prevCoinInserted <= CoinInserted;
	end
endmodule: coinAccept