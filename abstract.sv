module myAbstractFSM(
    input logic [17:0] SW,
    output logic [7:0] LEDR,
    output logic [6:0] HEX0, HEX7, HEX6, HEX5,
    input logic [3:0] KEY,
	 input  logic CLOCK_50,   // pin Y2
	 input  logic  UART_RXD,  // pin G12
    input  logic  UART_RTS,  // pin J13
    output logic  UART_TXD,  // pin G9
    output logic  UART_CTS,  // pin G14
	 output logic  circle, triangle, pentagon
	 );
    
   enum logic [2:0] {d0ch0 = 3'd0, d0ch1 = 3'd1, d0ch2 = 3'd2, d0ch3 = 3'd3, 
                     d1ch0 = 3'd4, d1ch1 = 3'd5, d1ch2 = 3'd6, d1ch3 = 3'd7}
                     currState, nextState;
	
	assign reset = SW[0];
	logic clock;
	coinAccepter ca(
    CLOCK_50,  // pin Y2
    reset,
    UART_RXD,  // pin G12
    UART_RTS,  // pin J13
    UART_TXD,  // pin G9
    UART_CTS,  // pin G14
    circle, triangle, pentagon,
    SW[17], KEY[0],
    KEY[1], KEY[2], KEY[3],
    clock);
							
							
	logic drop, reset;
	logic [3:0] credit;
	
	assign LEDR = {drop, drop, drop, drop, drop, drop, drop, drop};
	
	logic ppentagon, ptriangle, pcircle;
	logic cpentagon, ctriangle, ccircle;
	logic npentagon, ntriangle, ncircle;
	
	BCDtoSevenSegment credhex(HEX0, credit);
	BCDtoSevenSegment coinhex(HEX5, {npentagon, ntriangle, ncircle});
	BCDtoSevenSegment coinhex2(HEX6, {pentagon, triangle, circle});
	BCDtoSevenSegment clockhex(HEX7, clock);

    //next state logic
    always_comb
        case(currState)
            d0ch0, d1ch0: /*unique case(coin)
                2'd0: nextState = d0ch0;
                2'd1: nextState = d0ch1;
                2'd2: nextState = d0ch3;
                2'd3: nextState = d1ch1;
                endcase*/
					 nextState = npentagon ? d1ch1 : ntriangle ? d0ch3 : ncircle ? d0ch1 : d0ch0;
            d0ch1, d1ch1: /*unique case(coin)
                2'd0: nextState = d0ch1; 
                2'd1: nextState = d0ch2;
                2'd2: nextState = d1ch0;
                2'd3: nextState = d1ch2;
                endcase*/
					 nextState = npentagon ? d1ch2 : ntriangle ? d1ch0 : ncircle ? d0ch2 : d0ch1;
            d0ch2, d1ch2: /*unique case(coin)
                2'd0: nextState = d0ch2;
                2'd1: nextState = d0ch3;
                2'd2: nextState = d1ch1;
                2'd3: nextState = d1ch3;
                endcase*/
					 nextState = npentagon ? d1ch3 : ntriangle ? d1ch1 : ncircle ? d0ch3 : d0ch2;
            d0ch3, d1ch3: /*unique case(coin)
                2'd0: nextState = d0ch3;
                2'd1: nextState = d1ch0;
                2'd2: nextState = d1ch2;
                2'd3: nextState = d1ch0;
                endcase*/
					 nextState = npentagon ? d1ch0 : ntriangle ? d1ch2 : ncircle ? d1ch0 : d0ch3;
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

    always_ff @(posedge clock)
        if (reset == 1) begin
            currState <= d0ch0;
				pcircle <= 0;
				ptriangle <= 0;
				ppentagon <= 0;
		  end
        else begin
            currState <= nextState;
				pcircle <= circle;
				ptriangle <= triangle;
				ppentagon <= pentagon;
				ccircle <= pcircle;
				ctriangle <= ptriangle;
				cpentagon <= ppentagon;
				ncircle <= pcircle & ~ccircle;
				ntriangle <= ptriangle & ~ctriangle;
				npentagon <= ppentagon & ~cpentagon;
			end

endmodule: myAbstractFSM

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

module coinAccepter (
    input  logic  CLOCK_50,  // pin Y2
    input  logic  reset,
    input  logic  UART_RXD,  // pin G12
    input  logic  UART_RTS,  // pin J13
    output logic  UART_TXD,  // pin G9
    output logic  UART_CTS,  // pin G14
    output logic  circle, triangle, pentagon,
    input  logic  manualMode, manualClockL,
    input  logic  manualCircleL, manualTriangleL, manualPentagonL,
    output logic  clock);
 
    parameter count_width = 26;
 
    reg [count_width-1:0] count;
    wire [count_width-1:0] count_n, count_inc;
    reg [2:0] bits, coin, random, KEY, last_key;
    wire [2:0] bits_n, bits_rx, bits_key, coin_n, coin_k, coin_c, in_both;
    reg last_rxd, last_manualCLK;
    reg [15:0] CLK_COUNT, rxd_count;
    wire is_input, rxd_edge;
    
    // Debounced clock
    reg manualCLK, debounced_rxd;
    
    // IO
    assign {pentagon, triangle, circle} = coin;
    
    // positive edge
	 logic clk_edge; //I ADDED
    assign rxd_edge = debounced_rxd & ~last_rxd;
    assign clk_edge = manualCLK & ~last_manualCLK;
    
    // choose clock
    assign clock = (manualMode & manualCLK) | (~manualMode & CLOCK_50);
    
    // next coin
    assign coin_n = manualMode ? coin_k : coin_c;
    
    assign coin_c = count[count_width-1] ? ((count == {1'b1, {(count_width-1){1'b0}}}) ? bits : coin) : 0;
    assign coin_k = (count_n == 0) ? 0 : (count_n == 1) ? KEY : coin;
    
    // keeps track of the number of pulses, resets when counter is really high.
    assign bits_n = count[count_width-1] ? 0 : rxd_edge ? {bits, (bits == 0)} : bits;
    
    // Counter starts when it sees an input.
    assign count_inc = (manualMode & (count >= random)) ? 0 : (count + 1);
    assign is_input = manualMode ? (KEY != 0) : (bits != 0);
    
    assign count_n = (count == 0) ? is_input : count_inc;
    
    // Latch the key at any time
    always_ff @(posedge CLOCK_50) begin
        KEY <= (reset | clk_edge) ? 0 : (KEY | ~{manualPentagonL, manualTriangleL, manualCircleL});
        last_manualCLK <= manualCLK;
    end
    
    // update the state machine
    always_ff @(posedge clock) begin
        if (reset) begin
            coin <= 0;
            last_rxd <= 0;
            count <= 0;
            bits <= 0;
            random <= 5;
            last_key <= 0;
        end else begin
            last_key <= KEY;
            coin <= coin_n;
            last_rxd <= debounced_rxd;
            count <= count_n;
            bits <= bits_n;
            
            random <= (random == 2) ? 5 : (random - 1);
        end
    end
    
    // Debounce the clock and rxd
    always_ff @(posedge CLOCK_50) begin
        if (manualCLK ^ ~manualClockL) begin
            // output clock changes if input clock has been different for 0xFFFF cycles in a row.
            manualCLK <= manualCLK ^ (CLK_COUNT == 16'hFFFF);
            CLK_COUNT <= CLK_COUNT + 1;
        end else begin
            manualCLK <= manualCLK;
            CLK_COUNT <= 0;
        end
        if (debounced_rxd ^ UART_RXD) begin
            // output clock changes if input clock has been different for 0xFFFF cycles in a row.
            debounced_rxd <= debounced_rxd ^ (rxd_count == 16'hFFFF);
            rxd_count <= rxd_count + 1;
        end else begin
            debounced_rxd <= debounced_rxd;
            rxd_count <= 0;
        end
    end
 
endmodule: coinAccepter
