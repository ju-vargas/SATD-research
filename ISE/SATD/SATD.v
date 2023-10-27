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

 module SATD(input clk,
				 input rst,
				 input wire [63:0] ORG,
				 input wire [63:0] CUR,
				 output reg [8:0] out_diff);

//Part 2: Declarations ----------------------------------------------------------

	wire [9:0] control_signals; 
	wire [1:0] state;
	wire [2:0] count;
	
	reg [7:0] ORG_reg [0:7];
	reg [7:0] CUR_reg [0:7];
	//8 bits, 8 valores
	
	
//Part ?: -----------------------------------------------------------------------

	//?
	control u1(	.clk 	 		(clk),
					.rst 			(rst),
					.out_signal (control_signals),
					.state 		(state),
					.count 		(count));
					
	//differences d1 (	.clk 	 	(clk),
	//						.rst 		(rst),
	//						.enable	(control_signals[0]),
	//						.org		(ORG_reg[0]),
	//						.cur 		(CUR_reg[0]),
	//						.diff 		(out_diff));
	
//Part 3: Statements ------------------------------------------------------------
	
	initial begin
		//passa o wire pro registrador (futuramente pode ser q eu elimine o registrador e mude, se precisar)
		//inclusive, se for continuar vou trocar pra for
		ORG_reg[0] <= ORG[7:0];
		ORG_reg[1] <= ORG[15:8];
		ORG_reg[2] <= ORG[23:16];
		ORG_reg[3] <= ORG[31:24];
		ORG_reg[4] <= ORG[39:32];
		ORG_reg[5] <= ORG[47:40];
		ORG_reg[6] <= ORG[55:48];
		ORG_reg[7] <= ORG[63:56];
		
		CUR_reg[0] <= CUR[7:0];
		CUR_reg[1] <= CUR[15:8];
		CUR_reg[2] <= CUR[23:16];
		CUR_reg[3] <= CUR[31:24];
		CUR_reg[4] <= CUR[39:32];
		CUR_reg[5] <= CUR[47:40];
		CUR_reg[6] <= CUR[55:48];
		CUR_reg[7] <= CUR[63:56];		
	end
	
	always @(posedge clk) begin
		//fazer por for depois tambem, se for ficar assim
		//deixar com toda essa repeticao, mas repensar pq nem sempre vai precisar fazer o shift de tudo
		ORG_reg[0] <= ORG_reg[1];
		ORG_reg[1] <= ORG_reg[2];
		ORG_reg[2] <= ORG_reg[3];
		ORG_reg[3] <= ORG_reg[4];
		ORG_reg[4] <= ORG_reg[5];
		ORG_reg[5] <= ORG_reg[6];
		ORG_reg[6] <= ORG_reg[7];
		
		CUR_reg[0] <= CUR_reg[1];
		CUR_reg[1] <= CUR_reg[2];
		CUR_reg[2] <= CUR_reg[3];
		CUR_reg[3] <= CUR_reg[4];
		CUR_reg[4] <= CUR_reg[5];
		CUR_reg[5] <= CUR_reg[6];
		CUR_reg[6] <= CUR_reg[7];
		//shift registrator, p/ calcular 8 bits
		
		out_diff <= ORG_reg[6] - CUR_reg[0];

	end

	
	
	
	
	
endmodule
