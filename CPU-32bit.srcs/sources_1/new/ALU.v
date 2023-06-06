`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 11:27:57 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [31:0] AReg1,AReg2,
input wire [2:0]ALU_cnrtl,
output reg [31:0] ALU_out,zero
    );
initial
begin
//ALU_out <=0;//need to fix clk!! ->tb
end
always@(*)
begin
    
    case(ALU_cnrtl)                
    010: ALU_out <= AReg1 + AReg2;
    110: ALU_out <= AReg1 - AReg2;//
    000: ALU_out <= AReg1 & AReg2;//and
    001: ALU_out <= AReg1 | AReg2;//or
    111: ALU_out <= AReg1 << AReg2;//shift logic left
    endcase
   
end        
    
    
endmodule
