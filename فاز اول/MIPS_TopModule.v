`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:31 07/21/2020 
// Design Name: 
// Module Name:    MIPS_TopModule 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MIPS_TopModule(
    input clk,
	 output wire [31:0] Read_Data_1,
	 output wire [31:0] Read_Data_2,
	 output wire [31:0] output_mux_3,
	 output wire Zero,
    output wire [31:0] ALU_Result,
	 output wire [31:0] Read_data,
	 output wire [31:0] output_mux_4,
	 output wire [31:0] Instruction,
	 
	 output wire [31:0] q_pc,q_incrementer,
	 output wire RegDst,
	 output wire Branch,
	 output wire MemRead,
    output wire MemtoReg,
    output wire [1:0] ALUop,
    output wire MemWrite,
    output wire ALUsrc,		
    output wire RegWrite,
	 output wire [31:0]output_signExtend,
	 output wire [3:0]op,
	 output wire output_and,
	 output wire [31:0] Add_Result,
	 output wire [31:0] output_mux_2,
	 output wire [4:0] output_mux_1 
    );
	
	//wire[4:0] output_mux_1;
	//wire[31:0] output_mux_2;
	//wire[31:0] output_mux_3;
	//wire[31:0] output_mux_4;
	
	//wire[31:0] q_pc,q_incrementer;
	PC_Register UUT_PC_Register(clk,output_mux_4,q_pc);
	Incrementer UUT_Incrementer(q_pc,q_incrementer);
	
   //wire [31:0] Instruction;
	Instruction_Memory UUT_Instruction_Memory(q_pc[4:0],clk,Instruction);
	
   /*wire RegDst;
	wire Branch;
   wire MemRead;
   wire MemtoReg;
   wire [1:0] ALUop;
   wire MemWrite;
   wire ALUsrc;		
   wire RegWrite;*/
	Control UUT_Control(Instruction[31:26],RegDst,Branch,MemRead,MemtoReg,
	ALUop,MemWrite,ALUsrc,RegWrite);
	
	defparam UUT_1.param = 5;
	MUX_2to1 UUT_1(Instruction[20:16],Instruction[15:11],RegDst,output_mux_1);
	
	//wire [31:0] Read_Data_1;
	//wire [31:0] Read_Data_2;
	Register_File UUT_Register_File(Instruction[25:21],Read_Data_1,
	Instruction[20:16],Read_Data_2,output_mux_1,output_mux_3,RegWrite,clk);
	
	//wire [31:0]output_signExtend;
	Sign_Extend UUT_Sign_Extend(Instruction[15:0],output_signExtend,clk);
	
	defparam UUT_2.param = 32;
	MUX_2to1 UUT_2(Read_Data_2,output_signExtend,ALUsrc,output_mux_2);
	
	//wire [3:0]op;
	ALU_control UUT_ALU_control(ALUop,Instruction[5:0],op);
	
	//wire Zero;
   //wire [31:0] ALU_Result;
   //in_left=Read_Data_1
   //in_right=output_mux_2
	ALU_32 UUT_ALU_32(Zero,ALU_Result,op,Read_Data_1,output_mux_2,clk);
	
   //wire[31:0] Read_data;
	Data_Memory UUT_Data_Memory(ALU_Result[6:0],Read_Data_2,Read_data,
	MemWrite,MemRead,clk);
	
	defparam UUT_3.param = 32;
	MUX_2to1 UUT_3(ALU_Result,Read_data,MemtoReg,output_mux_3);
	
	//wire output_and;
	and UUT_and(output_and,Branch,Zero);
	
	//wire [31:0] Add_Result;
	//in_1=output_signExtend
   //in_2=q_incrementer
	Add UUT_Add(output_signExtend,q_incrementer,Add_Result);
	
	defparam UUT_4.param = 32;
	MUX_2to1 UUT_4(q_incrementer,Add_Result,output_and,output_mux_4);
	
	
endmodule
