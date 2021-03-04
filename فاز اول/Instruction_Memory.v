`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:15 07/20/2020 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(
    input [4:0] Instruction_Address,
	 input clk,
    output reg [31:0] Instruction
    );
	
	reg [31:0]mem_instruction[31:0];
	
	initial begin
		mem_instruction[0] = 32'b0010_0000_0000_0001_0000_0000_0000_0011;
		mem_instruction[1] = 32'b0010_0000_0000_0010_0000_0000_0000_0011;
		mem_instruction[2] = 32'b0000_0000_0010_0010_0001_1000_0001_1000;
		mem_instruction[3] = 32'b10001100010000010000000000001010;
		mem_instruction[4] = 32'b00010000001000100000000000010100;
	end
	
	integer i=0,j=2;
	always@(posedge clk)begin
		j <= j+1;
		if(j==3)begin
			Instruction <= mem_instruction[i];
			i <= i+1;
			j <= 0;
			if(i==5)
				$finish;
		end
		
	end
	
	//assign Instruction = mem_instruction[Instruction_Address];

endmodule
