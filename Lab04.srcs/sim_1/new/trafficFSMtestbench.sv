`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2020 19:09:48
// Design Name: 
// Module Name: trafficFSMtestbench
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


module trafficFSMtestbench();
 logic clk, reset, SA , SB;
 logic [2:0] lightA, lightB;
 
 // instantiate device under test
 trafficFSM dut( clk, reset, SA , SB, lightA, lightB);
 
 always begin
  clk <= 1; #5;
  clk <= 0; #5;
 end 
 
 initial begin
 reset <= 1; #10;
 
 reset <= 0; SA <= 1; SB <= 1; #10; //while there is traffic on A ( SA = 1) should stay on S0
 
 SB <= 0; #10; //this should not change S0 as long as there is traffic on street A

 SA <= 0; #10; //now there is no traffic, the state will be S1
 
 #10; //S2
 
 SB <= 1; #10; //S3 Notice that even SB is 1 it will transfer to next stage
 //when passes into S4 NOW it will stay
 
 #10; //S4
 
 #10; //S4 (stay in this state as long as traffic on B (SB = 1)
 
 #10; //S4
 
 #10; //S4 
 
 SB <= 0; #10; //transfer to S5 
 
 #10; //S6
 
 #10; //S7
 
 #10; //S0
 
 #10; //S1
 
 #10; //S2
 //................... S3, S4, S5
 
 #10; //AS LONG AS NO TRAFFIC THE STATES WILL CONTINUE TO CHANGE AND FOLLOW A CYCLE
 
 end
 

 
 
 //apply inputs one at a time
//   initial begin
//    reset <= 1; #3000000000;
//    reset <= 0; #3000000000;
//    SA <= 1; SB <= 1; #3000000000;
//    SB <= 0; #3000000000;
//    SA <= 0; #3000000000;  //passes s1 state  
//end 

   
     
  

   
endmodule
