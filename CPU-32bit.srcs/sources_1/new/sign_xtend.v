`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 12:18:32 PM
// Design Name: 
// Module Name: sign_xtend
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


module sign_xtend(
input [15:0] sign,
output reg [31:0] xtend
    );
    
    always@(*)
    begin
    xtend <= sign + 32'b0;
    end
    
endmodule
