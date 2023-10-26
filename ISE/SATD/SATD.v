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
				 input wire [7:0] ORG [0:127],
				 input wire [7:0] CUR [0:127]);

//Part 2: Declarations ----------------------------------------------------------

	wire [9:0] control_signals; 
	wire [1:0] state;
	wire [2:0] count;
	
	wire [7:0] out_diff; 

	reg [7:0] ORG_reg [0:127];
	reg [7:0] CUR_reg [0:127];
	
	
//Part ?: -----------------------------------------------------------------------

	//?
	control u1(	.clk 	 		(clk),
					.reset 		(reset),
					.out_signal (control_signals),
					.state 		(state),
					.count 		(count));
					
	//aqui sempre recebe o zero, preciso so lembrar de mudar o zero quando precicar
	diff d1 (	.enable	(control_signals[0]),
				.org		(ORG_reg[0]),
				.cur 		(CUR_reg[0]),
				.diff 		(out_diff)
	);
	
//Part 3: Statements ------------------------------------------------------------
	
	initial begin
		ORG_reg <= ORG;
		CUR_CUR <= CUR;
	end
	
	always @(posedge clk) begin
		ORG_reg[126:0] <= ORG_reg[127:1];
		CUR_reg[126:0] <= CUR_reg[127:1];		
	end

	
	
	
	
	
endmodule
