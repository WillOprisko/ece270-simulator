/*************************************************************
    Welcome to the new ice40HX8K simulation board!
    This demo is pretty straightforward. Press 1 or click
    on the button 1 to reset all flip flops and start the
    different counters on all the outputs.
**************************************************************/

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

  // DO NOT MODIFY ABOVE

  assign left  = 8'd125;
  assign right = {pb [0], pb [1], pb [2], pb [19], pb [18], pb [17]};
  assign ss7   = 8'd222;
  assign ss6   = 8'd255;
  assign ss5   = 8'd152;
  assign ss4   = 8'd142;
  assign ss3   = 8'd132;
  assign ss2   = 8'd122;
  assign ss1   = 8'd112;
  assign ss0   = 8'd102;
  assign red   = 1'b1;
  assign green = hz100;
  assign blue = ~hz100;

endmodule