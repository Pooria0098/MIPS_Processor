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
		mem_instruction[0] = 32'b001000_00000_00001_0000000000000011;//R1=R0+3 
		mem_instruction[1] = 32'b001000_00000_00010_0000000000000011;//R2=R0+3 
		mem_instruction[2] = 32'b000000_00001_00010_00011_00000_011000;//R3=R1+R2
		mem_instruction[3] = 32'b100011_00010_00001_0000000000001010;//lw R1, 10 (R2) 
		mem_instruction[4] = 32'b000100_00001_00010_0000000000010100;//beq R2, R1, 20 
		mem_instruction[5] = 32'b000010_10110001010001010001100010;//J
	end
	
	integer i=0,j=2;
	always@(posedge clk)begin
		j <= j+1;
		if(j==3)begin
			Instruction <= mem_instruction[i];
			i <= i+1;
			j <= 0;
			if(i==6)
				$finish;
		end
		
	end
	
	//assign Instruction = mem_instruction[Instruction_Address];

endmodule
