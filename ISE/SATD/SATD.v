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
				 input wire [1023:0] ORG,
				 input wire [1023:0] CUR,
				 output wire signed [8:0] diff_result_0,
				 output wire signed [8:0] diff_result_1,
				 output wire signed [8:0] diff_result_2,
				 output wire signed [8:0] diff_result_3,
				 output wire signed [8:0] diff_result_4,
				 output wire signed [8:0] diff_result_5,
				 output wire signed [8:0] diff_result_6,
				 output wire signed [8:0] diff_result_7,
				 output wire ENABLE_DIFF,
				 output wire RESET_DIFF,
				 output wire ENABLE_COUNTER,
				 output wire [3:0] COUNTER);
	
//------------------------------------------------------------------------------------------

				/* 	
						-- 64 bits -> 8 valores de 8 bits
						-- a cada ciclo vai sair um valor baseado nesses bits que recebeu
						
						--! descobrir se esse partial select vai como mux, wires diferentes ou shift (nao quero mux) 
						
						vai aparecer um delay entre count e o resultado das diferencas 
				      ____      ____      ____      ____
				     |    |____|    |____|    |____|    |____
				     count		 diff 
				     atualiza	 atualiza
				*/
				
				
//Part 2: Declarations ---------------------------------------------------------------------	
	reg [3:0] counter;
	
	assign COUNTER = counter;
//Part Instatiation: -----------------------------------------------------------------------
	
   control_satd control (.clk					(clk),
								 .rst					(rst),
								 .counter			(counter),
								 .ENABLE_COUNTER	(ENABLE_COUNTER),
								 .ENABLE_DIFF		(ENABLE_DIFF),
								 .RESET_DIFF		(RESET_DIFF));
								 
	differences diff(	.clk 	 		 (clk),
							.rst		 	 (RESET_DIFF),
							.ena			 (ENABLE_DIFF),
							.ORG			 (ORG[(counter*64)+:64]),
							.CUR 			 (CUR[(counter*64)+:64]),
							.diff_0		 (diff_result_0),
							.diff_1 		 (diff_result_1),
							.diff_2		 (diff_result_2),
							.diff_3		 (diff_result_3),
							.diff_4		 (diff_result_4),
							.diff_5		 (diff_result_5),
							.diff_6		 (diff_result_6),
							.diff_7		 (diff_result_7));
							

//Part 3: Statements ----------------------------------------------------------------------
	always @(posedge clk) begin
		if (rst) begin 
			counter <= 0; 
		end else begin 
			if (ENABLE_COUNTER) begin
				if (counter == 4'b1111) begin
					counter <= 0;
					$display("esse vai");
				end
				else 
					counter <= counter + 1;
			end
		end				
	end	
	
endmodule
