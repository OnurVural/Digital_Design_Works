`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:07:46
// Design Name: 
// Module Name: fullAdder_Behavioral
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


module fullAdder_Behavioral(
    input logic a, b, cin,
    output logic sum, cout);
    
    assign cout = a & b | (a ^ b) & cin;
    assign sum = a ^ b ^ cin;
endmodule
