`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2020 16:08:50
// Design Name: 
// Module Name: twoToFourDecoder_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module twoToFourDecoder_testbench();
logic enable, input1, input0;
logic y3, y2, y1, y0;

twoToFourDecoder dut(enable, input1, input0, y3, y2, y1, y0);
 // apply inputs one at a time
 initial begin
 enable = 0; input1 = 0; input0 = 0; #10;
 input0 = 1; #10;
 input1 = 1; input0 = 0; #10;
 input0 = 1; #10;
 enable = 1; input1 = 0; input0 = 0; #10;
 input0 = 1; #10;
 input1 = 1; input0 = 0; #10;
 input0 = 1; #10;
 end

endmodule
