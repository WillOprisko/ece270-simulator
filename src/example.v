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

  reset_on_start ros(.reset(reset), .clk(hz100), .manual(pb[3]&pb[0]&pb[16]));
  
  reg [4:0] count;
  wire hz4 = count >= 5'd12;
  always @(posedge reset, posedge hz100)
          if (reset == 1)
                  count <= 0;
          else
                  count <= count == 5'd24 ? 0 : count + 1;
                  
  reg enable;
  // assign left[0] = enable;
  reg [3:0] data0;
  always @(posedge reset, posedge pb[16])
          if (reset == 1)
                  enable <= 0;
          else if (pb[16] == 1) begin
                  enable <= ~enable; 
          end
          else begin
              data0 <= data0 + 2;
          end
  
  reg [7:0] data4;
  assign left = data4;
  
  wire [1:0] in = {pb [1], pb [0]};
  assign right = in == 3 ? 8'hFF :
                 in == 2 ? 8'hF  :
                 in == 1 ? 8'h88 : 0;

  always @(posedge hz100, posedge reset)
    if (reset)
      data4 <= 0;
    else
      data4 <= data4 + 1;
  
  always @(posedge hz4, posedge reset)
    if (reset)
      data4 <= 0;
    else
      data4 <= data4 + 1;
  
  always @(posedge hz4, posedge reset)
        if (reset == 1) begin
                data0 <= 0;
        end
        else if (enable == 1) begin
                if (data0 == 4'd9)
                        data0 <= 0;
                else
                        data0 <= data0 + 1;
        end

  ssdec d0(.out(ss0), .in(data0), .enable(1'b1));

endmodule

module ssdec(out, in, enable);
    output wire [7:0] out; // seven segment output
    input  wire [3:0] in;  // four-bit value to be displayed
    input  wire       enable;// Should we turn any segments on?

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

    wire [7:0] map [15:0];
    assign map[0] = char0;
    assign map[1] = char1;
    assign map[2] = char2;
    assign map[3] = char3;
    assign map[4] = char4;
    assign map[5] = char5;
    assign map[6] = char6;
    assign map[7] = char7;
    assign map[8] = char8;
    assign map[9] = char9;
    assign map[10] = charA;
    assign map[11] = charB;
    assign map[12] = charC;
    assign map[13] = charD;
    assign map[14] = charE;
    assign map[15] = charF;
    assign out =  enable == 1 ? map[in] : blank;
endmodule

module reset_on_start(reset, clk, manual);
  output reset;
  input clk;
  input manual;
  reg [2:0] startup = 0;
  assign reset = startup[2] | manual;    // MSB drives the reset signal
  always @ (posedge clk, posedge manual)
    if (manual == 1)
      startup <= 0;             // start with reset low to get a rising edge
    else if (startup == 0)
      startup <= 4;             // hold reset high for 4 cycles
    else if (startup == 4)
      startup <= 5;
    else if (startup == 5)
      startup <= 6;
    else if (startup == 6)
      startup <= 7;
    else if (startup == 7)
      startup <= 1;             // Final state is 1.
endmodule
