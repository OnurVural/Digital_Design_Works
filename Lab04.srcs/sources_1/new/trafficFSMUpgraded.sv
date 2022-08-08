`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2020 19:01:35
// Design Name: 
// Module Name: trafficFSMUpgraded
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
module clock3seconds(input logic clk_in, output logic clk_out);
    logic [27:0] count = 0;
    
    always @ (posedge clk_in)
    begin
    count<=count+1;
    if(count==150_000_000)
    begin
    count<=0;
    clk_out = ~clk_out;
    end
    end

// localparam constantNumber = 150000000;
//   logic [27:0] count;
     
//    always @ (posedge(clk_in))
//    begin
//        if (count == constantNumber - 1)
//            count <= 28'b0;
//        else
//            count <= count + 1;
//    end
    
//    always @ (posedge(clk_in))
//    begin
//        if (count == constantNumber - 1)
//            clk_out <= ~clk_out;
//        else
//            clk_out <= clk_out;
//    end

endmodule

module trafficFSMUpgraded( input logic clk, reset, SA , SB,
                   output logic [2:0] lightA, lightB);
typedef enum logic [2:0] {S0,S1,S2,S3,S4,S5,S6,S7} statetype;
statetype [2:0] state, nextstate;

typedef enum logic [2:0] {green = 3'b011,yellow = 3'b001,red = 3'b111} light;
//red = 3'b111; 
//yellow = 3'b001;
//green = 3'b011;

logic clkNew;
clock3seconds c1(clk, clkNew );
// state register
always_ff @ (posedge clkNew, posedge reset)
   if (reset) state <= S0;
   else state <= nextstate;
   
// next state logic
always_comb
  case (state)
    S0: begin 
        if (SA) 
            nextstate = S0; 
        else
            nextstate = S1;
        end
    S1: nextstate = S2; 
    S2: nextstate = S3; 
    S3: nextstate = S4;
    S4: begin 
        if (SB) 
            nextstate = S4; 
        else
            nextstate = S5;
        end
    S5: nextstate = S6; 
    S6: nextstate = S7; 
    S7: nextstate = S0;
    
    default: nextstate = S0;
   endcase

  //output logic
  always_comb
     case (state)
     S0: begin
         lightA = green;
         lightB = red;
         end
     S1: begin
         lightA = yellow;
         lightB = red;
         end    
     S2: begin
         lightA = red;
         lightB = red;
         end
     S3: begin
         lightA = red;
         lightB = yellow;
         end
      S4: begin
         lightA = red;
         lightB = green;
         end
      S5: begin
         lightA = red;
         lightB = yellow;
         end
      S6: begin
         lightA = red;
         lightB = red;
         end 
      S7: begin
         lightA = yellow;
         lightB = red;
         end
      endcase
endmodule
