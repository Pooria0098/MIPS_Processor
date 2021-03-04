`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:20 07/20/2020 
// Design Name: 
// Module Name:    PC_Register 
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
module PC_Register(
    input clk,
    input [31:0] d,
    output reg [31:0] q
    );
	 
	always@(posedge clk)
			q <= d;

endmodule
