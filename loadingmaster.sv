module loadMaster(
	input logic [2:0] LoadShape,
	input logic [1:0] ShapeLocation,
	input logic LoadShapeNow, reset, CLOCK_50,
	input logic [3:0] RoundNumber,
	output logic [2:0] master0, master1, master2, master3,
	output logic masterLoaded
	);
	
	logic [1:0] ShapeLocationIn;
	logic [2:0] LoadShapeIn;
	logic [3:0] decoderOutput;
	logic load0, load1, load2, load3;
	assign load0 = decoderOutput[0]&(master0 == 0);
	assign load1 = decoderOutput[1]&(master1 == 0);
	assign load2 = decoderOutput[2]&(master2 == 0);
	assign load3 = decoderOutput[3]&(master3 == 0);
	assign masterLoaded = (master0 != 0) & (master1 != 0) & (master2 != 0) & (master3 != 0);
	
	register #(3) m0(LoadShapeIn, load0, reset, CLOCK_50, master0);
	register #(3) m1(LoadShapeIn, load1, reset, CLOCK_50, master1);
	register #(3) m2(LoadShapeIn, load2, reset, CLOCK_50, master2);
	register #(3) m3(LoadShapeIn, load3, reset, CLOCK_50, master3);
	decoder  #(4) d1(ShapeLocationIn, 1, decoderOutput);
	
	logic prevLSN;
	always @(posedge CLOCK_50, posedge reset) begin
		if (reset) begin
			LoadShapeIn <= 0;
			ShapeLocationIn <= 0;
		end
		else if (LoadShapeNow & ~prevLSN & (RoundNumber == 0)) begin
			LoadShapeIn <= LoadShape;
			ShapeLocationIn <= ShapeLocation;
		end
		prevLSN <= LoadShapeNow;
	end
	
endmodule: loadMaster