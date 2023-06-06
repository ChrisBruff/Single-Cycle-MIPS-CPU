`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 12:19:20 PM
// Design Name: 
// Module Name: control_unit
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


module control_unit(

input [5:0]op_code,
output reg c_WRMOp,c_RegOp,c_to_ALU_Op,c_WDM_sel,
output reg [1:0] c_ALU_op,c_DM_op
    );
    
    always@(*)
    begin
    
    
    case(op_code)
    
    6'b000000: begin//R-type
        c_WRMOp <= 1'b1;
        c_RegOp <= 1'b1;
        c_ALU_op <= 2'b10;
        c_to_ALU_Op <= 1'b0;
        c_WDM_sel <= 1'b0;
        c_DM_op <=2'b00;
            
            end
    6'b101011: begin// sw
        c_WRMOp <= 1'b1;
        c_RegOp <= 1'b1;
        c_ALU_op <= 2'b00;
        c_to_ALU_Op <= 1'b1;
        c_WDM_sel <= 1'b0;
        c_DM_op <=2'b01;
            end
    6'b100011: begin// lw
        c_WRMOp <= 1'b0;
        c_RegOp <= 1'b1;
        c_ALU_op <= 2'b00;
        c_to_ALU_Op <= 1'b1;
        c_WDM_sel <= 1'b1;
        c_DM_op <=2'b10;
            end
            
            
    endcase
    end
    
endmodule
