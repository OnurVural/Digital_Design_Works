`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2020 17:45:24
// Design Name: 
// Module Name: fourToOneMultiplexer
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


module fourToOneMultiplexer(
    input logic s1, s0, d0, d1, d2, d3,
    output logic y
    );
    assign y = (~s1 & ~s0 & d0)+(~s1 & s0 & d1) + (s1 & ~s0 & d2)+ (s1 & s0 & d3);
endmodule
