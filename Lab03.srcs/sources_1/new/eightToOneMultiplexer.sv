`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2020 22:48:00
// Design Name: 
// Module Name: eightToOneMultiplexer
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
module andGate(input logic a, b, output logic product); 
   assign product =  a & b;
endmodule

module orGate(input logic a, b, output logic sum);
   assign sum =  a | b;
endmodule

module inverter(input logic a, output logic inputBar);
   assign inputBar = ~a;
endmodule

module eightToOneMultiplexer(
    input logic s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7,
    output logic y
    );
    
    logic s2Inverted, y1, y2, y1after, y2after;
    
    inverter inv(s2, s2Inverted);
    fourToOneMultiplexer mux1(s1, s0, d0, d1, d2, d3, y1);
    fourToOneMultiplexer mux2(s1, s0, d4, d5, d6, d7, y2);
    andGate aG1(s2Inverted, y1, y1after);
    andGate aG2(s2, y2, y2after);
    orGate oG(y1after, y2after, y); 
    
endmodule
