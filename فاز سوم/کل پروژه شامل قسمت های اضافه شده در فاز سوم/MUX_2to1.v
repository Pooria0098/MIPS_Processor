`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:23 07/20/2020 
// Design Name: 
// Module Name:    MUX_2to1 
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
module MUX_2to1(
    input [param-1:0] in_0,
    input [param-1:0] in_1,
	 input select,
    output reg [param-1:0] Out
    );
	 
	parameter param = 32;
	
	always@(*)begin
		if(select)
			Out = in_1;
		else
			Out = in_0;
	end

endmodule
