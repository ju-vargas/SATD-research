`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:30 10/24/2023 
// Design Name: 
// Module Name:    differences 
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
module differences( input  clk,
						 input  rst,
						 input  enable,
					    input  reg [7:0] org,
						 input  reg [7:0] cur,
						 output reg [8:0] diff);
	
//Part 2: Declarations ----------------------------------------------------------

	reg[8:0] diff;
	
//Part 3: Statements ------------------------------------------------------------

	always @(org, cur) begin
		diff <= org - cur;
	end	
endmodule
