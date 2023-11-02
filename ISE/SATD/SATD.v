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
// 	--mando de 8 em 8 valores (cada um de 8 bits, lembrar)
//		--vou mandar isso 16 vezes 
//		--esse modulo tem a interface pra receber os valores
//				--ai eu vou ter um resultado de subtracao a cada ciclo

//fazer por for depois tambem, se for ficar assim
//deixar com toda essa repeticao, mas repensar pq nem sempre vai precisar fazer o shift de tudo  
//////////////////////////////////////////////////////////////////////////////////
//Part 1: Module Header ---------------------------------------------------------

 module SATD(input clk,
				 input rst,
				 input wire [63:0] ORG,
				 input wire [63:0] CUR,
				 output reg signed [8:0] diff);
				 //64 bits -> 8 valores de 8 bits
				 //a cada ciclo vai sair um valor baseado nesses bits que recebeu

//Part 2: Declarations ---------------------------------------------------------
	reg [7:0] ORG_reg [0:7];
	reg [7:0] CUR_reg [0:7];
		
	
//Part ?: -----------------------------------------------------------------------
//Part 3: Statements ------------------------------------------------------------
	always @(posedge clk) begin
		
		
		//load
		if (rst) begin 
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
			
			diff <= 0;
			
		end else begin  
			diff <= ({1'b0,ORG_reg[0]} - {1'b0,CUR_reg[0]});
			
			//o primeiro display nao vai estar com alta impedancia, pq eh o do ultimo clk
			$display("DIFF: %0d",diff);

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
		end						
	end	
endmodule
