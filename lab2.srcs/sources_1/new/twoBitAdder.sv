`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:44:54
// Design Name: 
// Module Name: twoBitAdder
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
module fullAdder( input logic a,b,cin, output logic sum,cout);
   assign cout = a & b | ((a ^ b) & cin);
   assign sum = a ^ b ^ cin;
endmodule

module twoBitAdder(
    input logic a0, b0, a1, b1, cin0,
    output logic s0, s1, cout1
    );
    logic cout0;
   
    fullAdder fa1( a0, b0, cin0, s0, cout0);
    fullAdder fa2( a1, b1, cout0, s1, cout1);
endmodule
