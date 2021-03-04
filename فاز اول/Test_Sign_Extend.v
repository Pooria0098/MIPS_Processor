`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:05:42 07/21/2020
// Design Name:   Sign_Extend
// Module Name:   D:/Xilinx/14.7/Project/MIPS_PROCESSOR/Test_Sign_Extend.v
// Project Name:  MIPS_PROCESSOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sign_Extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Sign_Extend;

	// Inputs
	reg [15:0] in;
	reg clk;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	Sign_Extend uut (
		.in(in), 
		.out(out), 
		.clk(clk)
	);
	
	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
   end  
	initial repeat(10) #10 clk=~clk;
		
	initial begin
		// Add stimulus here
		in = -30;
	   if (out == -30)
		 	$display("okay 1");
	   else
		 	$display("fail 1");
		#20;
	   in = 40;
	   if (out == 40)
		 	$display("okay 2");
	   else
			$display("fail 2");
	end
      
endmodule

