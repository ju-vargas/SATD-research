`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:17 10/24/2023 
// Design Name: 
// Module Name:    SATD 
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
//Part 1: Module Header ---------------------------------------------------------

module SATD( input clk,
				 input reset,
				 input reg [7:0] ORG [127:0],
				 input reg [7:0] CUR [127:0]);

//Part 2: Declarations ----------------------------------------------------------

	wire [9:0] control_signals; 
	wire [1:0] state;
	wire [2:0] count;

//Part ?: -----------------------------------------------------------------------

	//?
	control u1(	.clk 	 		(clk),
					.reset 		(reset),
					.out_signal (signals),
					.state 		(state),
					.count 		(count));
					
//Part 3: Statements ------------------------------------------------------------
	
	diff d1 (	.enable	(control_signals[0]),
				.org		(ORG[0]),
				.cur 		(CUR[0])
	);
	
	
	
endmodule
