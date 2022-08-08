`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2020 16:26:21
// Design Name: 
// Module Name: reduceSumTestBench
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


//module reduceSumTestBench();
//logic clk, button;
////logic writeEnable;
//logic [3:0] writeAddress;
//logic [7:0] writeData;
//logic [3:0] readAddress2;
//logic [7:0] readData2;
//logic [11:0] sum;
//reduceSum dut(clk, button, writeAddress,  writeData, readAddress2, readData2, sum);

//always begin
//  clk <= 1; #5;
//  clk <= 0; #5;
// end 
 
 
// initial begin
 
 
// //readAddress2 <= 4'b0000; #10;
// writeAddress <= 4'b0001; writeData <= 8'b1111_1111; #10;
// writeAddress <= 4'b0011; writeData <= 8'b1111_1010; #10;
// writeAddress <= 4'b0100; writeData <= 8'b1000_1111; #10;
//// writeAddress <= 4'b1000; writeData <= 8'b1111_1111; #10;
//// writeAddress <= 4'b1110; writeData <= 8'b0111_1111; #10;
 
// button <= 1;  #10;
//  //button <= 1;  #10;
// //button <= 0; #10;

// //writeEnable <= 1; writeAddress <= 4'b1110; writeData <= 8'b1111_1111; #10;
 
// //button <= 1; #10;

// end
//endmodule
module reduceSumTestBench();
logic clk,  button, writeEnable;
logic [3:0] writeAddress, readAddress1 ,readAddress2;
logic [7:0] writeData, readData1, readData2;
logic [11:0] sum;

memoryModule m( clk, writeEnable, writeAddress, readAddress1, readAddress2, writeData, readData1, readData2);
reduceSum dut(clk, button, readData2, readAddress2, sum);



always begin
  clk <= 1; #5;
  clk <= 0; #5;
 end 
 
 
 initial begin
 
 
 writeEnable <= 1;
 
 //readAddress2 <= 4'b0000; 
 readAddress1 <= 4'b0001; #10;
 writeAddress <= 4'b0000; writeData <= 8'b0000_0001; #10;
 writeAddress <= 4'b0001; writeData <= 8'b0000_0010; #10;
 writeAddress <= 4'b0011; writeData <= 8'b0000_0011; #10;
 writeAddress <= 4'b0100; writeData <= 8'b1111_1111; #10;
// writeAddress <= 4'b1000; writeData <= 8'b1111_1111; #10;
 //writeAddress <= 4'b1110; writeData <= 8'b0111_1111; #10;
 
 button <= 1; #10;
 button <= 0; #10;
 
 //writeAddress <= 4'b1111; writeData <= 8'b0000_0100; #10;
// //button <= 1; #10;
 
// //writeEnable <= 0; #10;
// writeEnable <= 1; writeAddress <= 4'b1110; writeData <= 8'b1111_1111; #10;
 
//button <= 1; #10;
// button <= 0; #10;

//button <= 1; #10;
// button <= 0; #10;
 end
endmodule