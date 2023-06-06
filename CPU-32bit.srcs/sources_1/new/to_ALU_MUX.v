`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 05:36:50 PM
// Design Name: 
// Module Name: to_ALU_MUX
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


module to_ALU_MUX(
input to_ALU_Op,
input [31:0] Rtype,Itype,
output reg [31:0] to_ALU 
    );
always@(*)
begin
case(to_ALU_Op)
    1'b0: to_ALU <= Rtype;
    1'b1: to_ALU <= Itype;
endcase
end
endmodule
