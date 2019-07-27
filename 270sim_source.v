// Empty top module

module top (hz100, pb, ss7, ss6, ss5, ss4, ss3, ss2, ss1, ss0, left, right, red, green, blue);
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

endmodule

/*
 When you need them:

 localparam blank = 8'b00000000;
  localparam char0 = 8'b00111111;
  localparam char1 = 8'b00000110;
  localparam char2 = 8'b01011011;
  localparam char3 = 8'b01001111;
  localparam char4 = 8'b01100110;
  localparam char5 = 8'b01101101;
  localparam char6 = 8'b01111101;
  localparam char7 = 8'b00000111;
  localparam char8 = 8'b01111111;
  localparam char9 = 8'b01101111;
  localparam charA = 8'b01110111;
  localparam charB = 8'b01111100;
  localparam charC = 8'b00111001;
  localparam charD = 8'b01011110;
  localparam charE = 8'b01111001;
  localparam charF = 8'b01110001;
  localparam charG = 8'b01101111;
  localparam charH = 8'b01110110;
  localparam charI = 8'b00000100;
  localparam charJ = 8'b00001110;
  localparam charL = 8'b00111000;
  localparam charN = 8'b01010100;
  localparam charO = 8'b01011100;
  localparam charP = 8'b01110011;
  localparam charR = 8'b01010000;
  localparam charS = 8'b01101101;
  localparam charU = 8'b00111110;
  localparam charY = 8'b01101110;

*/
