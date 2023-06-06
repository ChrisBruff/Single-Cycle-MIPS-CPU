`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2022 12:26:42 PM
// Design Name: 
// Module Name: Write_Reg_MUX
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


module Write_Reg_MUX(
input wire WRMOp,
input wire [4:0] Sel1,Sel2,
output reg [4:0] write_Reg
    );
always@(*)
begin

case(WRMOp)
0: write_Reg = Sel1;
1: write_Reg = Sel2;
endcase

end
    
endmodule
