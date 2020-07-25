`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:36:08 07/20/2020
// Design Name:   ALU_32
// Module Name:   D:/Xilinx/14.7/Project/MIPS_PROCESSOR/Test_ALU_32.v
// Project Name:  MIPS_PROCESSOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALU_32;

	// Inputs
	reg [3:0] ALU_Operation;
	reg [31:0] in_left;
	reg [31:0] in_right;
	reg clk;

	// Outputs
	wire Zero;
	wire [31:0] ALU_Result;

	// Instantiate the Unit Under Test (UUT)
	ALU_32 uut (
		.Zero(Zero), 
		.ALU_Result(ALU_Result), 
		.ALU_Operation(ALU_Operation), 
		.in_left(in_left), 
		.in_right(in_right), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		ALU_Operation = 0;
		in_left = 0;
		in_right = 0;
		clk = 0;
		forever #20 clk=~clk;
	end
	
	initial begin
		// Wait 90 ns for global reset to finish
		#90;
		// Add stimulus here
		in_left=3;
		in_right=5;
		ALU_Operation=0;
		#32;
		in_left=3;
		in_right=5;
		ALU_Operation=1;
		#41;
		in_left=3;
		in_right=5;
		ALU_Operation=2;
		#43;
		in_left=3;
		in_right=5;
		ALU_Operation=6;
		#40;
		in_left=3;
		in_right=5;
		ALU_Operation=7;
		#40;
		in_left=3;
		in_right=5;
		ALU_Operation=12;
	end
      
endmodule

