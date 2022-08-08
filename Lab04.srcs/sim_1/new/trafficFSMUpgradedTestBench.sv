`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2020 23:19:55
// Design Name: 
// Module Name: trafficFSMUpgradedTestBench
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


module trafficFSMUpgradedTestBench();

logic clk, reset, SA , SB;
logic [2:0] lightA, lightB;

 // instantiate device under test
 trafficFSMUpgraded dut( clk, reset, SA , SB, lightA, lightB);
 
 always begin
  clk <= 1; #1500000000;
  clk <= 0; #1500000000;
 end 
 
 initial begin
 reset <= 1; #3000000000;
 
 reset <= 0; SA <= 1; SB <= 1; #3000000000; //while there is traffic on A ( SA = 1) should stay on S0
 
 SB <= 0; #3000000000; //this should not change S0 as long as there is traffic on street A

 SA <= 0; #3000000000; //now there is no traffic, the state will be S1
 
 #3000000000; //S2
 
 SB <= 1; #3000000000; //S3 Notice that even SB is 1 it will transfer to next stage
 //when passes into S4 NOW it will stay
 
 #3000000000; //S4
 
 #3000000000; //S4 (stay in this state as long as traffic on B (SB = 1)
 
 #3000000000; //S4
 
 #3000000000; //S4 
 
 SB <= 0; #3000000000; //transfer to S5 
 
 #3000000000; //S6
 
 #3000000000; //S7
 
 #3000000000; //S0
 
 #3000000000; //S1
 
 #3000000000; //S2
 //................... S3, S4, S5
 
 #3000000000; //AS LONG AS NO TRAFFIC THE STATES WILL CONTINUE TO CHANGE AND FOLLOW A CYCLE
 
 end    
endmodule

// initial begin
//   clk = 0;
//   //reset = 0;
//   //reset <= #10 1;
//   forever #1500000000 clk = ~clk;
// end

 //apply inputs one at a time
//   initial begin
//    reset <= 1; #3000000000;
//    reset <= 0; #3000000000;
//    SA <= 1; SB <= 1; #3000000000;
//    SB <= 0; #3000000000;
//    SA <= 0; #3000000000;  //passes s1 state  
//end 