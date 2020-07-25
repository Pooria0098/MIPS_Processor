`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:43 07/23/2020
// Design Name:   Instruction_Memory
// Module Name:   D:/Xilinx_Project/MIPS_32/Test_Instruction_Memory.v
// Project Name:  MIPS_32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Instruction_Memory;

	// Inputs
	reg [4:0] Instruction_Address;
	reg clk;

	// Outputs
	wire [31:0] Instruction;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.Instruction_Address(Instruction_Address), 
		.clk(clk), 
		.Instruction(Instruction)
	);

	initial begin
		// Initialize Inputs
		Instruction_Address = 0;
		clk = 0;
		forever #20 clk=~clk;
		  
		// Add stimulus here

	end
      
endmodule

