`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:42 07/24/2020 
// Design Name: 
// Module Name:    Shift_left_2 
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
module Shift_left_2(
    input [25:0] shift_in,
    output [27:0] shift_out
    );

	assign shift_out = {shift_in[25:0],2'b00};
	
endmodule
