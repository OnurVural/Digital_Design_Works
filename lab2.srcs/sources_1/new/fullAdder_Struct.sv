`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:22:22
// Design Name: 
// Module Name: fullAdder_Struct
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
module halfAdder(input logic a, b, output logic sum, cout);
   assign sum =  a ^ b;
   assign cout =  a & b;
endmodule

module orGate(input logic a, b, output logic sum);
   assign sum =  a | b;
endmodule

module fullAdder_Struct(
    input logic a, b, cin,
    output logic sum, cout
    );
    logic sum1,cout1,cout2;

    halfAdder ha1(a , b, sum1, cout1);
    halfAdder ha2(sum1, cin, sum, cout2);
    orGate oG(cout1, cout2, cout); //assign cout = cout2 | cout1;
endmodule
