`timescale 1ns / 1ps

module adder(
input wire [31:0] curr_PC,
output reg [31:0] next_PC
    );
    
    
always@(*)
    begin
         next_PC <= curr_PC +4;
    end
endmodule
