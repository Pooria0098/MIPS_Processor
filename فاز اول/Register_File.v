`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:09 07/21/2020 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(
    input [4:0] ReadRegister_1,
	 output [31:0] Read_Data_1,
    input [4:0] ReadRegister_2,
	 output [31:0] Read_Data_2,
    input [4:0] WriteRegister,
    input [31:0] WriteData,
	 input RegWrite,
	 input clk
    );

	reg [31:0]reg_array[31:0];
	initial begin
		reg_array[0]=0;
	end
	
	assign Read_Data_1 = reg_array[ReadRegister_1];  
   assign Read_Data_2 = reg_array[ReadRegister_2];
	
	always@(posedge clk)begin
		if(RegWrite)
			reg_array[WriteRegister] <= WriteData;
	end
	
endmodule
