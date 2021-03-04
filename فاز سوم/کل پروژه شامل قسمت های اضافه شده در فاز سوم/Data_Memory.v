`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:23 07/20/2020 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(
    input [6:0] Address,
    input [31:0] Write_data,
    output reg[31:0] Read_data,
    input MemWrite,
    input memRead,
	 input clk
    );
	 
	reg [31:0]memory[127:0];
	initial begin
		memory[13] = 3;
	end
	
	always@(posedge clk)begin
		if(memRead)
			Read_data <= memory[Address];
		if(MemWrite)
			memory[Address] <= Write_data;
	end
	
endmodule
