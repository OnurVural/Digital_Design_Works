`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2020 16:05:03
// Design Name: 
// Module Name: twoToFourDecoder
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


module twoToFourDecoder(
    input logic enable, input1, input0,
    output logic y3, y2, y1, y0
    );
    
   always_comb
   if (enable)
      begin
      y3 = input1 & input0;
      y2 = input1 & ~input0;
      y1 = ~input1 & input0;
      y0 = ~input1 & ~input0;
      end
   else 
      begin
      y3 = 1'b0;
      y2 = 1'b0;
      y1 = 1'b0;
      y0 = 1'b0;
      end  
endmodule
