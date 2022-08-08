`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 23:23:23
// Design Name: 
// Module Name: memoryModuleTestBench
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


module memoryModuleTestBench();
logic clk, writeEnable;
logic [3:0] writeAddress, readAddress1, readAddress2;
logic [7:0] writeData;
logic [7:0] readData1, readData2;

memoryModule dut(clk, writeEnable, writeAddress, readAddress1, 
readAddress2, writeData, readData1, readData2);

always begin
  clk <= 1; #5;
  clk <= 0; #5;
 end 
 
 initial begin
 writeEnable <= 0; writeAddress <= 4'b0000; readAddress1 <= 4'b0001; readAddress2 <= 4'b0010; writeData <= 8'b0001_0110;  #10;
 writeEnable <= 1; #10;
 writeAddress <= 4'b0001; writeData <= 8'b0000_1100; #10;
 writeAddress <= 4'b0010; writeData <= 8'b0100_0000; #10;
 writeData <= 8'b0000_0001; #10;
 readAddress1 <= 4'b0000; #10;
 //readAddress2 <= 4'b0000; #10;
 writeData <= 8'b1111_1111; #10;
 writeAddress <= 4'b0000; #10;
 end

endmodule
