`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2020 18:08:46
// Design Name: 
// Module Name: fourToOneMultiplexer_testbench
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


module fourToOneMultiplexer_testbench();
logic s1, s0, d0, d1, d2, d3;
logic y;

fourToOneMultiplexer dut(s1, s0, d0, d1, d2, d3, y);

// apply inputs one at a time
 initial begin
s1 = 0; s0 = 0; d0 = 0; #10;
d0 = 1; #10;

d0 = 1'bx; d2 = 1'bx; d3 = 1'bx;
s0 = 1; d1 = 0; #10;
d1 = 1;#10;

d0 = 1'bx; d1 = 1'bx; d3 = 1'bx; 
s1 = 1; s0 = 0; d2 = 0; #10;
d2 = 1;#10;

d0 = 1'bx; d1 = 1'bx; d2 = 1'bx; 
s0 = 1; d3 = 0; #10;
d3 = 1; #10;

end
endmodule
