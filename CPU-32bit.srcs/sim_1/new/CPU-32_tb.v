`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 04:00:07 PM
// Design Name: 
// Module Name: CPU-32_tb
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


module CPU_32_tb;
reg clk;

datapath DUT(.clk(clk));

always #10 clk = ~clk;
initial begin

clk = 0;

#150;
$finish;
end
endmodule
