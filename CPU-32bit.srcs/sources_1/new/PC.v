`timescale 1ns / 1ps

module PC(
    output reg [31:0] IMaddr,
    input wire [31:0] next_instruc,
    input clk
    );
    
    initial IMaddr <= 32'b0;
    always@(posedge clk)
    
    begin
    IMaddr <= next_instruc;
    end
    
endmodule
