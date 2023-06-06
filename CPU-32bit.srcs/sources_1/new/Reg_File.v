`timescale 1ns / 1ps

module Reg_File(
input clk,RegOp,
input wire [31:0] Write_Data,
input wire [4:0] Reg1,Reg2,Write_Reg,
output reg [31:0] Reg1_data,Reg2_data
    );
            
reg [31:0] register [0:63];

integer i;
initial begin 
    Reg1_data <= 0;//need to fix clk!! ->tb
    Reg2_data <= 0;//need to fix clk!! ->tb
    for(i=0; i< 64;i = i+1)
        register[i] = 0 + i;
    end
always@(posedge clk)
begin
    Reg1_data <= register[Reg1];
    Reg2_data <= register[Reg2];
    
    if (RegOp)
        register[Write_Reg] <= Write_Data;
    end
    
endmodule
