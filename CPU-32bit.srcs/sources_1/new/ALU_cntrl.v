`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 02:14:12 PM
// Design Name: 
// Module Name: ALU_cntrl
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


module ALU_cntrl(
    input [1:0] ALU_op,
    input wire [5:0] funct,
    output reg [2:0] ALU_inst
    );
always@(*)
begin
case(ALU_op)

    //2'b10: ALU_inst <= 010;
    2'b01: ALU_inst <= 110;
    
    2'b10: begin
            case(funct)
                
                6'b100000: ALU_inst <= 3'b010;
                6'b100010: ALU_inst <= 3'b110;
                6'b100100: ALU_inst <= 3'b000;
                6'b100101: ALU_inst <= 3'b001;
                6'b101010: ALU_inst <= 3'b111;
            
            endcase
        end
        
endcase
end   

endmodule
