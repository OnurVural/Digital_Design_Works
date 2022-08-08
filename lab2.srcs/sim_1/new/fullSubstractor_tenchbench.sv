`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:38:48
// Design Name: 
// Module Name: fullSubstractor_tenchbench
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


module fullSubstractor_tenchbench();
  logic a, b, bin;
  logic diff, bout;

 // instantiate device under test
 fullSubstractor dut(a, b, bin, diff, bout); 

 // apply inputs one at a time
 initial begin
 a = 0; b = 0; bin = 0; #10;
 bin = 1; #10;
 b = 1; bin = 0; #10;
 bin = 1; #10;
 a = 1; b = 0; bin = 0; #10;
 bin = 1; #10;
 b = 1; bin = 0; #10;
 bin = 1; #10;
 end
endmodule
