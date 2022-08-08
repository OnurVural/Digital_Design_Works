`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 01:35:46
// Design Name: 
// Module Name: fullSubstractor
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
module halfSubstractor(input logic a, b, output diff, bout);
   assign diff =  a ^ b;
   assign bout =  ~a & b;
endmodule

module fullSubstractor(
    input logic a, b, bin,
    output logic diff, bout
    );
   logic d1,b1,b2;
   
   halfSubstractor hs1(a, b, d1, b1);
   halfSubstractor hs2(d1, bin, diff, b2);
   orGate og(b1,b2,bout);
endmodule
