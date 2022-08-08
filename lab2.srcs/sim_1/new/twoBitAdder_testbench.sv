`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:47:02
// Design Name: 
// Module Name: twoBitAdder_testbench
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


module twoBitAdder_testbench();
 logic a0, b0, a1, b1, cin0;
 logic s0, s1, cout1;

 // instantiate device under test
 twoBitAdder dut( a0, b0, a1, b1, cin0, s0, s1, cout1);

 // apply inputs one at a time
 initial begin
 a1 = 0; a0 = 0; b1 = 0; b0 = 0; cin0 = 0; #10;
 cin0 = 1; #10;
 cin0 = 0; b0 = 1; #10;
 b0 = 0; a0 = 1; #10;
 a0 = 0; b0 = 1; cin0 = 1; #10;
 b0 = 0; a0 = 1; #10;
 b0 = 1; cin0 = 0; #10;
 cin0 = 1; #10;
 a0 = 0; b1 = 1; b0 = 0; cin0 = 0; #10;
 cin0 = 1; #10;
 b0 = 1; cin0 = 0; #10;
 a0 = 1; b0 = 0; #10;
 a0 = 0; b0 = 1; cin0 = 1; #10; 
 a0 = 1; b0 = 0; #10;
 b0 = 1; cin0 = 0; #10;
 cin0 = 1; #10;
 a1 = 1; a0 = 0; b1 = 0; b0 = 0; cin0 = 0; #10;
 cin0 = 1; #10;
 b0 = 1; cin0 = 0; #10;
 a0 = 1; b0 = 0; #10;
 a0 = 0; b0 = 1; cin0 = 1; #10;
 a0 = 1; b0 = 0; #10;
 b0 = 1; cin0 = 0; #10;
 cin0 = 1; #10;
 a0 = 0; b1 = 1; b0 = 0; cin0 = 0; #10;
 cin0 = 1; #10;
 b0 = 1; cin0 = 0; #10;
 a0 = 1; b0 = 0; #10;
 a0 = 0; b0 = 1; cin0 = 1; #10;
 a0 = 1; b0 = 0; #10;
 b0 = 1; cin0 = 0 ; #10;
 cin0 = 1; #10;
 end
endmodule
