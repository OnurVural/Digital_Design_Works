`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:10:05
// Design Name: 
// Module Name: fullAdder_Behavioral_testbench
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


module fullAdder_Behavioral_testbench();

 logic a, b, cin;
 logic sum, cout;

 // instantiate device under test
 fullAdder_Behavioral dut(a, b, cin, sum, cout); 

 // apply inputs one at a time
 initial begin
 a = 0; b = 0; cin = 0; #10;
 cin = 1; #10;
 b = 1; cin = 0; #10;
 cin = 1; #10;
 a = 1; b = 0; cin = 0; #10;
 cin = 1; #10;
 b = 1; cin = 0; #10;
 cin = 1; #10;
 end
endmodule
