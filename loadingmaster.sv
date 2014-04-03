`default_nettype none

module loadMaster(
	input logic [2:0] LoadShape,
	input logic [1:0] ShapeLocation,
	input logic LoadShapeNow, reset, CLOCK_50, gamePlaying, resetMaster,
	output logic [2:0] master0, master1, master2, master3,
	output logic masterLoaded, clearMaster
	//output logic [6:0] HEX7, HEX6, HEX5, HEX4
	);
	
	/*BCDtoSevenSegment h1(HEX7, master3);
	BCDtoSevenSegment h2(HEX6, master2);
	BCDtoSevenSegment h3(HEX5, master1);
	BCDtoSevenSegment h4(HEX4, master0);*/
	
	logic [3:0] decOut;
	logic load0, load1, load2, load3, timeToLoad, resetM, prevPrevReset, prevReset;
	assign resetM = clearMaster | resetMaster;
	assign timeToLoad = LSN & ~gamePlaying;
	assign load0 = timeToLoad&decOut[0]&(master0 == 3'd0);
	assign load1 = timeToLoad&decOut[1]&(master1 == 3'd0);
	assign load2 = timeToLoad&decOut[2]&(master2 == 3'd0);
	assign load3 = timeToLoad&decOut[3]&(master3 == 3'd0);
	assign masterLoaded = (master0 != 3'd0) & (master1 != 3'd0) & (master2 != 3'd0) & (master3 != 3'd0);
	
	register #(3) m0(LoadShape, load0, resetM, CLOCK_50, master0);
	register #(3) m1(LoadShape, load1, resetM, CLOCK_50, master1);
	register #(3) m2(LoadShape, load2, resetM, CLOCK_50, master2);
	register #(3) m3(LoadShape, load3, resetM, CLOCK_50, master3);
	decoder  #(4) d1(ShapeLocation, 1, decOut);
	
	logic prevLSN, prevPrevLSN, LSN;
	always_ff @(posedge CLOCK_50, posedge reset)
       if (reset)
         prevReset <= 1;
       else begin
			prevReset <= 0;
			prevPrevReset<= prevReset;
			clearMaster <= prevReset & ~prevPrevReset;
			prevLSN <= LoadShapeNow;
			prevPrevLSN <= prevLSN;
			LSN <= prevLSN & ~prevPrevLSN;
		end
	
endmodule: loadMaster