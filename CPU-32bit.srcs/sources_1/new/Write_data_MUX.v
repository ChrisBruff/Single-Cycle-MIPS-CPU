`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 09:56:04 AM
// Design Name: 
// Module Name: Write_data_MUX
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


module Write_data_MUX(
input WDM_sel,
input [31:0] ALU_data,DM_data,
output reg [31:0] Write_data_out
    );
    always@(*)
    begin
    case(WDM_sel)
    
    1'b1: Write_data_out <=  DM_data;
    1'b0: Write_data_out <=  ALU_data;
    
    endcase
    end
endmodule
