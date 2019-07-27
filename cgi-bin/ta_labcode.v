// Lab 08

    module top(hz100,pb,ss7,ss6,ss5,ss4,ss3,ss2,ss1,ss0,left,right,red,green,blue);
        input hz100;
        input [20:0] pb;
        output [7:0] ss7;
        output [7:0] ss6;
        output [7:0] ss5;
        output [7:0] ss4;
        output [7:0] ss3;
        output [7:0] ss2;
        output [7:0] ss1;
        output [7:0] ss0;
        output [7:0] left;
        output [7:0] right;
        output red;
        output green;
        output blue;

        // Write your code below...






    reg [7:0] state;
    always @(posedge pb[16], posedge pb[17], posedge pb[18])
    begin

    if (pb[16] == 1'b1)
      state <= tog;
    else if (pb[17] == 1'b1) // 'X' button clears state
      state <= 8'b00000000;
    else
      state <= tog;

    end

    reg [7:0] tog = 8'b00000000;
    always @(posedge pb[0])
      tog[0] <= ~tog[0];
      always @(posedge pb[1])
      tog[1] <= ~tog[1];
      always @(posedge pb[2])
      tog[2] <= ~tog[2];
      always @(posedge pb[3])
      tog[3] <= ~tog[3];
      always @(posedge pb[4])
      tog[4] <= ~tog[4];
      always @(posedge pb[5])
      tog[5] <= ~tog[5];
      always @(posedge pb[6])
      tog[6] <= ~tog[6];
      always @(posedge pb[7])
      tog[7] <= ~tog[7];
      always @(posedge pb[8])
      tog[8] <= ~tog[8];

    assign left = tog;
    assign right = state;





    endmodule
