`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2020 15:57:48
// Design Name: 
// Module Name: reduceSum
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

//module reduceSum(input logic clk, button, input logic [7:0] readData2, output logic [3:0] readAddress2, output logic [11:0] sum);

//typedef enum logic [2:0] {S0,S1,S2} statetype;
//statetype [2:0] state, nextstate;

//logic [11:0] s;
//logic [4:0] i;

//// state register
//always_ff @ (posedge clk)
//begin
//    if(button)
//     state <= S0;
//    else
//        state <= nextstate;
//end

//// next state logic
//always_ff @ (posedge clk)
//  case (state)
//   S0: begin 
//     if (button) 
//           nextstate = S1;      
//             else          
//              nextstate = S0;       
//               end
//   S1: begin 
//        s = 12'b0;
//        i = 5'b0;
//        nextstate = S2;
//        end
//   S2: begin
//       if ( i <= 4'b1111 )
//       begin
//          s = s + readData2;
//          i = i + 1;
//         nextstate = S2;
//       end
//       else if(i == 5'b00000)
//      begin
//         i = 5'b0;
//         nextstate = S0;
//       end
//      end
//    default: nextstate = S0;   
//   endcase
   
// assign sum = s; 
// assign readAddress2 = i; 

//endmodule

module reduceSum(input logic clk, button, input logic [7:0] readData2, output logic [3:0] readAddress2, output logic [11:0] sum);

typedef enum logic [2:0] {S0,S1,S2,S3} statetype;
statetype [2:0] state, nextstate;

integer s;
integer i;

// state register
always_ff @ (posedge clk)
begin
    if(button)
     state <= S0;
    else
     state <= nextstate;
end

// next state logic
always_ff @( posedge clk)
  case (state)
   S0: begin //WAITING FOR BUTTON
     if (button) 
           nextstate = S1;      
     else          
          nextstate = S0;       
     end
   S1: begin //INITIALIZING
        s = 0;
        i = 0;
        nextstate = S2;
        end
   S2: begin //LOOP CONTROL
     if ( i <= 15 )
        nextstate = S3;
     else
        begin
        i = 0;
        nextstate = S0;
        end
     end
   S3: begin //ADDITION
      s = s + readData2;
      i = i + 1;
      nextstate = S2;
      end
    default: nextstate = S0; 
   endcase
   
 assign sum = s; 
 assign readAddress2 = i; 

endmodule
