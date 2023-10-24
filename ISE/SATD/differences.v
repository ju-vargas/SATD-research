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
module differences( input  enable,
					    input  reg org,
						 input  reg cur,
						 output reg diff);
	
//Part 2: Declarations ----------------------------------------------------------

	reg[8:0] diff [7:0];
	
//Part 3: Statements ------------------------------------------------------------

	//questionavel!
	always @(org, cur) begin
		diff <= org - cur;
	end	
endmodule
