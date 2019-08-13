module lab08_tb();

logic [20:0] pb;
wire [7:0] left;
wire [7:0] right;

top t1 (.pb (pb), .left (left), .right (right));

task check_output;
  input string message;
  input value;
  input expected;
begin
  #5;
  if (value === expected || (value === 'x && expected == '0))
    $display ("CORRECT during check for %s, value = %b, expected = %b", message, value, expected);
  else
    $display ("INCORRECT during check for %s, value = %b, expected = %b", message, value, expected);
  #5;
end
endtask

initial begin
  // $dumpfile ("tbtest.vcd");
  // $dumpvars (0, lab08_tb);
  pb = 8'b00000000;
  check_output ("left initial setting", left, 8'b00000000);
  check_output ("right initial setting", right, 8'b00000000);

  pb [7:3] = 5'b11111;
  pb [7:3] = 5'b00000;
  check_output ("left after setting pb [7:3]", left, 8'b11111000);
  check_output ("right after setting pb [7:3]", right, 8'b00000000);

  pb [16] = 1'b1;
  pb [16] = 1'b0;
  check_output ("left after setting a clock edge", left, 8'b11111000);
  check_output ("right after setting a clock edge", right, 8'b11111000);

  pb [17] = 1'b1;
  pb [17] = 1'b0;
  check_output ("left after an asynchronous clear", left, 8'b11111000);
  check_output ("right after an asynchronous clear", right, 8'b00000000);

  pb [7:3] = 5'b11111;
  pb [7:3] = 5'b00000;
  check_output ("left after toggling pb a second time", left, 8'b00000000);
  check_output ("right after toggling pb a second time", right, 8'b00000000);

  pb [16] = 1'b1;
  pb [16] = 1'b0;
  check_output ("left after a second asynchronous clear", left, 8'b00000000);
  check_output ("right after a second asynchronous clear", right, 8'b00000000);
end

endmodule
