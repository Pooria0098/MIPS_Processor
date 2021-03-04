`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:08 07/25/2020 
// Design Name: 
// Module Name:    MUX_3to1 
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
module MUX_3to1(
	 input [param-1:0] in_0,
    input [param-1:0] in_1,
	 input [param-1:0] in_2,
	 input [1:0]select,
    output reg [param-1:0] Out
    );

	parameter param = 32;
	
	always@(*)begin
		if(select==0)
			Out = in_0;
		else if(select==1)
			Out = in_1;
		else if(select==2)
			Out = in_2;
		else
			Out = 'bX;
	end
	
endmodule
