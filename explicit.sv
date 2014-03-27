`default_nettype none

module dflipflop(
    output logic q,
    input logic d, clock, reset);

    always @(posedge clock)
        if(reset == 1)
            q <= 0;
        else
            q <= d;
endmodule: dflipflop

module myExplicitFSM(
    input logic [1:0] coin,
    output logic drop, q0, q1, q2,
    output logic [3:0] credit,
    input logic clock, reset);

    logic d0, d1, d2;

    //to make assigning credit easier
    logic l0, l1, l2, l3;
    assign credit = {l3, l2, l1, l0};
    assign l2 = 0; //max credit is 3
    assign l3 = 0; //max credit is 3

    //to make working with coin easier
    logic c0, c1;
    assign {c1, c0} = coin;

    //flip flops
    dflipflop ffInst0(.d(d0), .clock(clock), .reset(reset), .q(q0));
    dflipflop ffInst1(.d(d1), .clock(clock), .reset(reset), .q(q1));
    dflipflop ffInst2(.d(d2), .clock(clock), .reset(reset), .q(q2));

    //next state
    logic move, dontmove0, dontmove1, d1move, d2move;
    assign  move = c0|c1;
    assign dontmove0 = q0&~move;
    assign dontmove1 = q1&~move;
    
    assign d0 = (~q0&move) | dontmove0;
    assign d1move = (~(q1^q0) & ~c0) | ((q1^q0) & c0);
    assign d1 = (d1move)&move | dontmove1;
    assign d2move = (c1&c0)|(c1&(q0|q1))|(c0&q0&q1);
    assign d2 = d2move&move; //if you don't move d2 = 0 always

    //output logic
    always_comb begin
        drop = q2;
        l1 = q1;
        l0 = q0;
    end

endmodule: myExplicitFSM
/*
module fsmEtestbench(
    input logic drop, q2, q1, q0,
    input logic [3:0] credit,
    output logic [1:0] coin,
    output logic clock, reset);

    initial begin
        clock = 0;
        forever #10 clock = ~clock;
    end

    initial begin
        $monitor($time,, "state=%d, drop=%d, credit=%d, coin=%d",
                {q2,q1,q0}, drop, credit, coin);

        coin = 2'b00; reset = 1;
        @(posedge clock);
        @(posedge clock);

        @(posedge clock);
        #1 reset = 0;
        #1 coin = 2'b01;
        @(posedge clock); //1:0->1 001
        #1 coin = 2'b01;
        @(posedge clock); //1:1->2 010
        #1 coin = 2'b01;
        @(posedge clock); //1:2->3 011
        #1 coin = 2'b01;
        @(posedge clock); //1:3->4 100
        #1 coin = 2'b10;
        @(posedge clock); //3:4->3 011
        #1 coin = 2'b10;
        @(posedge clock); //3:3->6 110
        #1 coin = 2'b10;
        @(posedge clock); //3:6->5 101
        #1 coin = 2'b10;
        @(posedge clock); //3:5->4 100
        #1 coin = 2'b01;
        @(posedge clock); //1:4->1 001
        #1 coin = 2'b10;
        @(posedge clock); //3:1->4 100
        #1 coin = 2'b11;
        @(posedge clock); //5:4->5 101
        #1 coin = 2'b01;
        @(posedge clock); //1:5->2 010
        #1 coin = 2'b10;
        @(posedge clock); //3:2->5 101 
        #1 coin = 2'b11;
        @(posedge clock); //5:5->6 110
        #1 coin = 2'b01;
        @(posedge clock); //1:6->3 011
        #1 coin = 2'b11;
        @(posedge clock); //5:3->4 100
        #1 coin = 2'b11;
        @(posedge clock); //5:4->5 101
        #1 coin = 2'b11;
        @(posedge clock); //5:5->6 110
        #1 coin = 2'b11;
        @(posedge clock); //5:6->7 111
        #1 coin = 2'b11;
        @(posedge clock); //5:7->4 100
        #1 reset = 1; coin = 2'b00;
        @(posedge clock); //5:7->0 100
        @(posedge clock); //5:7->0 100
        #1 reset = 0;
        @(posedge clock); 
        #1 coin = 2'b10;
        @(posedge clock); //3:0->3 
        #1 reset = 1;
        @(posedge clock); //reset
        @(posedge clock);
        #1 reset = 0;
        #1 coin = 2'b11;
        @(posedge clock); //5: 0->5
        #1 coin = 2'b00;
        @(posedge clock); //0: 5->1
        @(posedge clock); //0: 1->1
        #1 coin = 2'b11;
        @(posedge clock); //5: 1->6
        #1 coin = 2'b00;
        @(posedge clock); //0: 6->2
        #1 coin = 2'b11;
        @(posedge clock); //5: 2->7
        #1 coin = 2'b01;
        @(posedge clock); //1: 7->4
        #1 coin = 2'b00;
        @(posedge clock); //0: 4->0
        @(posedge clock); //0: 0->0
        #1 coin = 2'b01;
        @(posedge clock); //1: 0->1
        @(posedge clock); //1: 1->2
        #1 coin = 2'b00;
        @(posedge clock); //2: 2->2
        #1 coin = 2'b11;
        @(posedge clock); //5: 2->7
        #1 coin = 2'b00;
        @(posedge clock); //0: 7->3
        @(posedge clock); //0: 3->3
        #1 coin = 2'b01;
        @(posedge clock); //1: 3->4
        @(posedge clock); //1: 4->1
        @(posedge clock); //1: 1->2
        #1 coin = 2'b11;
        @(posedge clock); //5: 2->7
        #1 coin = 2'b10;
        @(posedge clock); //3: 7->6
        #1 reset = 1; coin =2'b00;
        @(posedge clock); //reset to 0
        @(posedge clock);
        #1 reset = 0; coin = 2'b01;
        @(posedge clock); //1: 0->1
        #1 reset = 1; coin =2'b00;
        @(posedge clock); //reset to 0
        @(posedge clock);
        #1 reset = 0; coin = 2'b11;
        @(posedge clock); //1: 0->5
        #1 reset = 1; coin =2'b00;
        @(posedge clock); //reset to 0
        @(posedge clock);
        #1 reset = 0; coin = 2'b01;
        @(posedge clock); //1: 0->1
        @(posedge clock); //1: 1->2
        #1 reset = 1; coin =2'b00;
        @(posedge clock); //reset to 0
        @(posedge clock);
        #1 reset = 0; coin = 2'b01;
        @(posedge clock); //1: 0->1
        @(posedge clock); //1: 1->2
        #1 coin = 2'b11;
        @(posedge clock); //5: 2->7
        #1 reset = 1; coin =2'b00;
        @(posedge clock); //reset to 0
        @(posedge clock);
 
        $finish;
    end
endmodule: fsmEtestbench

module tb();
    logic [3:0] credit;
    logic [1:0] coin;
    logic drop, q0, q1, q2, clock, reset;

    myExplicitFSM efsm(.*);
    fsmEtestbench   tfsm(.*);

endmodule: tb
*/