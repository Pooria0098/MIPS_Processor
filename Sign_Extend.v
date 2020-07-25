`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:21 07/21/2020 
// Design Name: 
// Module Name:    Sign_Extend 
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
module Sign_Extend(
    input [15:0] in,
    output reg [31:0] out,
	 input clk
    );
	
	always @( posedge clk ) begin
		out[31:0] <= { {16{in[15]}}, in[15:0] };
	end

endmodule
