`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:42:09 07/23/2020
// Design Name:   MIPS_TopModule
// Module Name:   D:/Xilinx_Project/MIPS_32/Test_MIPS_TopModule.v
// Project Name:  MIPS_32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS_TopModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MIPS_TopModule;

	// Inputs
	reg clk;

	// Outputs
	wire Zero;
	wire [31:0] ALU_Result;
	wire [31:0] Read_data;
	wire [31:0] output_mux_4;
	wire [31:0] Instruction;
	
	wire [31:0] Read_Data_1;
	wire [31:0] Read_Data_2;
	wire [31:0] output_mux_3;
	
	wire Jump;
	wire [31:0] output_mux_5;
	wire [31:0] jump_address;
	 
	wire [31:0] q_pc;
	wire [31:0] q_incrementer;
	wire [1:0] RegDst;
	wire Branch;
	wire MemRead;
	wire [1:0] MemtoReg;
	wire [1:0] ALUop;
	wire MemWrite;
	wire ALUsrc;
	wire RegWrite;
	wire [31:0] output_signExtend;
	wire [3:0] op;
	wire output_and;
	wire [31:0] Add_Result;
	wire [31:0] output_mux_2;
	wire [4:0] output_mux_1;

	// Instantiate the Unit Under Test (UUT)
	MIPS_TopModule uut (
		.clk(clk), 
		.Read_Data_1(Read_Data_1), 
		.Read_Data_2(Read_Data_2), 
		.output_mux_1(output_mux_1), 
		.Zero(Zero), 
		.jump_address(jump_address),
		.ALU_Result(ALU_Result), 
		.Read_data(Read_data), 
		.output_mux_4(output_mux_4), 
		.q_pc(q_pc), 
		.q_incrementer(q_incrementer), 
		.Instruction(Instruction), 
		.RegDst(RegDst),
		.Branch(Branch), 
		.MemRead(MemRead), 
		.MemtoReg(MemtoReg),
		.Jump(Jump),
		.output_mux_5(output_mux_5),
		.ALUop(ALUop), 
		.MemWrite(MemWrite), 
		.ALUsrc(ALUsrc), 
		.RegWrite(RegWrite), 
		.output_signExtend(output_signExtend), 
		.op(op), 
		.output_and(output_and), 
		.Add_Result(Add_Result), 
		.output_mux_2(output_mux_2), 
		.output_mux_3(output_mux_3)
	);

	initial begin
		clk = 1;
		// Initialize Inputs
		forever #20 clk=~clk;
	end
	initial begin
		#518;
		$display("Read_Data_1=%d \n Read_Data_2=%d \n output_mux_3=%d \n Zero=%d \n ALU_Result=%d\n\n***\n",Read_Data_1,Read_Data_2,output_mux_3,Zero,ALU_Result);
		#160;
		$display("Zero=%d \n ALU_Result=%d \n Read_data=%d \n output_mux_4=%d \n output_mux_3=%d \n Instruction=%d\n\n***\n",
		Zero,ALU_Result,Read_data,output_mux_4,output_mux_3,Instruction);
		#160;
		$display("Zero=%d \n ALU_Result=%d \n Read_data=%d \n output_mux_4=%d \n output_mux_3=%d \n Instruction=%d\n\n***\n",
		Zero,ALU_Result,Read_data,output_mux_4,output_mux_3,Instruction);
	end
      
endmodule

