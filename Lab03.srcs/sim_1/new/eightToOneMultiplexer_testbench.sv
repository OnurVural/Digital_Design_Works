`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2020 23:19:17
// Design Name: 
// Module Name: eightToOneMultiplexer_testbench
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


module eightToOneMultiplexer_testbench();
   logic s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7;
   logic y;
   
   // instantiate device under test
   eightToOneMultiplexer dut(s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7,y);
   
   initial begin
   
   //d0 check
   s2 = 0; s1 = 0; s0 = 0; d0 = 0; d1 = 1'bx; d2 = 1'bx; d3 = 1'bx; 
   d4 = 1'bx; d5 = 1'bx; d6 = 1'bx; d7= 1'bx; #10;
   d0 = 1; #10;
   
   //d1 check
   s0 = 1; d0 = 1'bx; d1 = 0; #10;
   d1 = 1; #10;
   
   //d2 check
   s0 = 0; s1 = 1; d1 = 1'bx; d2 = 0; #10;
   d2 = 1; #10;
   
   //d3 check
   s0 = 1; d2 = 1'bx; d3 = 0; #10;
   d3 = 1; #10;
   
   //d4 check
   s0 = 0; s1 = 0; s2 = 1; d3 = 1'bx; d4 = 0; #10;
   d4 = 1; #10;
   
   //d5 check
   s0 = 1;  d4 = 1'bx; d5 = 0; #10;
   d5 = 1; #10;
   
   //d6 check
   s0 = 0; s1 = 1; d5 = 1'bx; d6 = 0; #10;
   d6 = 1; #10;
   
   //d7 check
   s0 = 1; d6 = 1'bx; d7 = 0; #10;
   d7 = 1; #10;
  
    end  
endmodule
