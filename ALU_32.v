`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:22 07/20/2020 
// Design Name: 
// Module Name:    ALU_32 
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
module ALU_32(
    output reg Zero,
    output reg [31:0] ALU_Result,
    input [3:0] ALU_Operation,
    input [31:0] in_left,
    input [31:0] in_right,
	 input clk
    );
	 
	reg [31:0] internal_ALU_Result;
	reg internal_Zero;
	
	always@(in_left,in_right,ALU_Operation)begin
		if(in_left==in_right)
			internal_Zero=1'b1;
		else
			internal_Zero=1'b0;
			
		case(ALU_Operation)
			0: internal_ALU_Result = in_left & in_right;
			1:	internal_ALU_Result = in_left | in_right;
			2: internal_ALU_Result = in_left + in_right;
			6:	internal_ALU_Result = in_left - in_right;
			7:	internal_ALU_Result = (in_left < in_right) ? in_left : in_right;
			12:internal_ALU_Result = ~(in_left | in_right);
			default:internal_ALU_Result = 32'bX;
		endcase
	end
	
	always@(posedge clk)begin
		Zero <= internal_Zero;
		ALU_Result <= internal_ALU_Result;
	end
	
endmodule
