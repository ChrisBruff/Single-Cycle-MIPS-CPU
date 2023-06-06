`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2023 11:20:08 AM
// Design Name: 
// Module Name: Data_Mem
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


module Data_Mem(
    input [1:0] DM_op,// DM_op[1] read bit, DM_op[0] write bit
    input clk,
    input [31:0] DM_addr, DM_dataW,
    output reg [31:0] DM_out
    );
    
    reg [31:0] DM_mem [0:63];
    
integer i;
initial begin
        //DM_out <= 32'b0;
        for(i =0; i <64; i= i+1)
        DM_mem[i] = 0+i;
        end
    
always@(posedge clk)
    begin
        case(DM_op)
            2'b00: DM_out <= 32'b0;  //Rtype
            2'b00: DM_out <= 32'b0;   //beq
            2'b01:begin  // sw
                        DM_mem[DM_addr] <= DM_dataW;
                  end
            2'b10:begin  // lw
                        DM_out <= DM_mem[DM_addr ];
                  end
    
    
        endcase
    end
endmodule
