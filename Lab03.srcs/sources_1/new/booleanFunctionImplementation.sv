`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2020 01:10:06
// Design Name: 
// Module Name: booleanFunctionImplementation
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


module booleanFunctionImplementation(
    input logic a, b, c, d,
    output logic y
    );
    logic dInverted;
    
    inverter inv(d, dInverted);
    eightToOneMultiplexer mux8toOne( a, b, c, 1, d, dInverted, d, dInverted, 1, 0, d, y);
endmodule
