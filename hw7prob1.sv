module comparator
  #(parameter   WIDTH = 8)
  (output logic             AltB, AeqB, AgtB,
   input  logic [WIDTH-1:0] A, B);

  assign AeqB = (A == B);
  assign AltB = (A <  B);
  assign AgtB = (A >  B);

endmodule: comparator

module comparator_test;

  logic AltB, AeqB, AgtB;
  logic [1:0] A, B;
  logic [3:0] vector;
  
  assign {A, B} = vector;
  
  comparator #(2) dut(.*);
  
  initial begin
    $monitor("A:%b B:%b ->> AltB(%b) AeqB(%b) AgtB(%b)", A, B, AltB, AeqB, AgtB);
    for (vector = 4'b0; vector != 4'b1111; vector++) 
      #1;
    #1 
    $stop;
  end
endmodule : comparator_test

module adder
  #(parameter WIDTH=8)
  (input  logic [WIDTH-1:0] A, B,
   input  logic             Cin,
   output logic [WIDTH-1:0] Sum,
   output logic             Cout);
   
   assign {Cout, Sum} = A + B + Cin;
   
endmodule : adder

module adder_test;

  logic [3:0] A, B;
  logic       Cin;
  logic [3:0] Sum;
  logic       Cout;
  
  logic [8:0] vector;
  assign {Cin, A, B} = vector;
  
  adder #(4) dut(.*);
  
  initial begin
    $monitor("Cin:%b A:%b B:%b ->> Cout:%b Sum:%b", Cin, A, B, Cout, Sum);
    for (vector = 9'b0; vector != 9'b1_1111_1111; vector++) 
      #1;
    #1;
    $stop;
  end  
  
endmodule : adder_test

module mux
  #(parameter WIDTH=8)
  (input  logic [WIDTH-1:0]         I,
   input  logic [$clog2(WIDTH)-1:0] Sel,
   output logic                     Y);
   
   assign Y = I[Sel];
   
endmodule : mux

module mux_test;

  logic [7:0] I;
  logic [2:0] Sel;
  logic       Y;
  
  mux dut(.*);
  
  initial begin
    $monitor("I(%b), Sel(%b) --> Y(%b)", I, Sel, Y);
    I = 8'b1011_0011;
    for (Sel=3'b000; Sel != 3'b111; Sel++)
      #1;
    #1;
    $stop;
  end
  
endmodule : mux_test

module mux2to1
  #(parameter WIDTH = 8)
  (input  logic [WIDTH-1:0] I0, I1,
   input  logic             Sel,
   output logic [WIDTH-1:0] Y);
   
  assign Y = (Sel) ? I1 : I0;
  
endmodule : mux2to1

module mux2to1_test;

  logic [1:0] I0, I1;
  logic       Sel;
  logic [1:0] Y;
  
  logic [4:0] vector;
  assign {Sel, I1, I0} = vector;
  
  mux2to1 #(2) dut(.*);
  
  initial begin
    $monitor("Sel(%b) I1(%h) I0(%h) -> Y(%h)", Sel, I1, I0, Y);
    for(vector = 5'b0; vector != 5'b11111; vector++)
      #1;
    #1;
    $stop;
  end
  
endmodule : mux2to1_test

module decoder
  #(parameter WIDTH=8)
  (input  logic [$clog2(WIDTH)-1:0] I,
   input  logic                     en,
   output logic [WIDTH-1:0]         D);
   
  always_comb begin
    D = 0;
    if (en)
      D = 1'b1 << I;
  end
  
endmodule : decoder

module decoder_test;

  logic [2:0] I;
  logic       en;
  logic [7:0] D;
  
  logic [3:0] vector;
  assign {en, I} = vector;

  decoder #(8) dut(.*);
  
  initial begin
    $monitor("I(%b) en(%b) -> D(%b)", I, en, D);
    for(vector = 4'd0; vector != 4'b1111; vector++)
      #1;
    #1;
    $stop;
  end
  
endmodule : decoder_test

module register
  #(parameter WIDTH=8)
  (input  logic [WIDTH-1:0] D,
   input  logic             en, clr, clk,
   output logic [WIDTH-1:0] Q);
   
  always_ff @(posedge clk)
    if (en)
      Q <= D;
    else if (clr)
      Q <= 0;
      
endmodule : register

module register_test;

  logic [7:0] D;
  logic       en, clr, clk;
  logic [7:0] Q;
  
  register dut(.*);
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $monitor("D(%b) clr(%b) en(%b) -> Q(%b)", D, clr, en, Q);
    D <= 8'b0111_0001; clr <= 0; en <= 1;
    #7;
    D <= 8'b1000_1110; en <= 0;
    #20;
    clr <= 1;
    #10;
    $stop;
  end
  
endmodule : register_test

