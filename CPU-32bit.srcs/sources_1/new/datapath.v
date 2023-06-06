`timescale 1ns / 1ps


module datapath(
input clk
//output [31:0] curr_instruc//,next_instruc,
    );
wire [31:0] IMaddr,next_PC; //to IM, from PC

wire [31:0] instruction; //IM instruction
wire [5:0] op_code; // op code for cntrl unit
//for sign xtend
wire [15:0] sign;
wire [31:0] xtend;
//for reg file
wire [31:0] Reg1_data,Reg2_data; // to ALU
wire [4:0] Reg1,Reg2, Sel1,Sel2, write_Reg;
wire [31:0] Write_data_out,Write_Data;

//ALU wires
wire [2:0] ALU_inst;
wire [5:0] funct;
wire [31:0] to_ALU;
wire [1:0] ALU_op;
wire [31:0] ALU_out;

//DM wires
wire [31:0] DM_data,DM_out;
wire [1:0] DM_op;

PC PC_top(.clk(clk), .IMaddr(IMaddr), .next_instruc(next_PC));
adder adder_top(.curr_PC(IMaddr),.next_PC(next_PC));

IM IM_top(.Read_addr(IMaddr),.instruction(instruction));
output [31:0] ALU_output;
// IM instruction datapath
//for reg file
assign Reg1 = instruction[25:21];
assign Reg2 = instruction[20:16];
//for write reg mux
assign Sel1 = instruction[20:16];
assign Sel2 = instruction[15:11];
//for ALU operation
assign funct = instruction[5:0];
//for sign xtend
assign sign = instruction[15:0];
//for control unit
assign op_code = instruction[31:26];

control_unit control_unit_top(.op_code(op_code),.c_WRMOp(WRMOp),.c_RegOp(RegOp),.c_ALU_op(ALU_op),.c_to_ALU_Op(to_ALU_Op),.c_WDM_sel(WDM_sel),.c_DM_op(DM_op)); 

Write_Reg_MUX Write_Reg_MUX_top(.Sel1(Sel1),.Sel2(Sel2),.write_Reg(write_Reg),.WRMOp(WRMOp));
Reg_File Reg_File_top(.clk(clk),.RegOp(RegOp),.Write_Data(Write_Data),.Write_Reg(write_Reg),.Reg1(Reg1),.Reg2(Reg2),.Reg1_data(Reg1_data),.Reg2_data(Reg2_data));

sign_xtend sign_xtend_top(.sign(sign),.xtend(xtend));
to_ALU_MUX to_ALU_MUX_top(.to_ALU_Op(to_ALU_Op),.Rtype(Reg2_data),.Itype(xtend),.to_ALU(to_ALU));

ALU ALU_top(.AReg1(Reg1_data),.AReg2(to_ALU),.ALU_cnrtl(ALU_inst),.ALU_out(ALU_out));
ALU_cntrl ALU_cntrl_top(.ALU_op(ALU_op),.funct(funct),.ALU_inst(ALU_inst));

Data_Mem Data_Mem_top(.clk(clk),.DM_op(DM_op),.DM_addr(ALU_out),.DM_dataW(Reg2_data),.DM_out(DM_out));

Write_data_MUX Write_data_MUX_top(.WDM_sel(WDM_sel),.ALU_data(ALU_out),.DM_data(DM_out),.Write_data_out(Write_Data));
endmodule
