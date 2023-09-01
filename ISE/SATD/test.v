`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:26 09/01/2023 
// Design Name: 
// Module Name:    test 
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
module test(
	input wire CLK,
	input wire RST,
	input wire [7:0] ORG [0:7],
   input wire [7:0] CUR [0:7],
	output reg [8:0] diff [0:7]);
	
	//CRIAR variavel que controle o tamanho do buffer
	reg [1:0] cycle; 
	
	calcdiff d0 (
		.CLK (CLK),
		.RST (RST),
		.ORG (ORG),
		.diff (diff)
	);
	
	h_transform();
	
	v_transform();
	
	shift_buffer();
		
		
	
endmodule