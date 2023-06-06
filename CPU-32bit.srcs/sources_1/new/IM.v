`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2022 04:56:35 PM
// Design Name: 
// Module Name: IM
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
        // R-type 31:26/opcode-25:21/rs-20:16/rt-15:11/rd-10:6/shamt-5:0/funct
        // I-type 31:26/opcode-25:21/rs-20:16/rt-15:0/immediate
        // J-type 31:26/opcode-25:0/target address
//////////////////////////////////////////////////////////////////////////////////

module IM(
input wire [31:0] Read_addr,
output reg [31:0] instruction 
    );

reg [31:0] IM;
    always@(*)
  begin
case(Read_addr)
    0: instruction = 32'b000000_00011_00100_00000_00000_100000;//R-type - add
    4: instruction = 32'b000000_00010_00100_00000_00000_100010;//R-type - sub
    8: instruction = 32'b000000_00011_00011_00000_00000_100101;//R-type - or
    12: instruction = 32'b000000_00100_00110_00000_00000_100100;//R-type - and
    16: instruction = 32'b101011_00000_00000_00000_00000_000100;//sw
    20: instruction = 32'b100011_00001_00011_00000_00000_000001;//lw
    
   endcase
   end
    

endmodule
