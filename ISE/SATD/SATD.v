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
				 input wire [1023:0] CUR);
				 //64 bits -> 8 valores de 8 bits
				 //a cada ciclo vai sair um valor baseado nesses bits que recebeu

//Part 2: Declarations ---------------------------------------------------------
	//control
	wire [3:0] counter;
	wire ENABLE_DIFF;
	wire RESET_DIFF;
	
	//--esses reg com sinais depois serao wires!
	//--virao da parte combinacional do controle	
	//input
	reg [63:0] ORG_partial ;
	reg [63:0] CUR_partial ;
	
	//output
	wire signed [8:0]  diff_result_0;
	wire signed [8:0]  diff_result_1;
	wire signed [8:0]  diff_result_2;
	wire signed [8:0]  diff_result_3;
	wire signed [8:0]  diff_result_4;
	wire signed [8:0]  diff_result_5;
	wire signed [8:0]  diff_result_6;
	wire signed [8:0]  diff_result_7;
	

//------------------------------------------------------------------------------------------
	
//Part Instatiation: -----------------------------------------------------------------------
	
   control_satd control (.clk				(clk),
								 .rst				(rst),
								 .ENABLE_DIFF	(ENABLE_DIFF),
								 .RESET_DIFF	(RESET_DIFF),
								 .COUNTER		(counter));
								 
	differences diff(	.clk 	 		 (clk),
							.rst		 	 (RESET_DIFF),
							.ena			 (ENABLE_DIFF),
							.ORG			 (ORG_partial),
							.CUR 			 (CUR_partial),
							.diff_0		 (diff_result_0),
							.diff_1 		 (diff_result_1),
							.diff_2		 (diff_result_2),
							.diff_3		 (diff_result_3),
							.diff_4		 (diff_result_4),
							.diff_5		 (diff_result_5),
							.diff_6		 (diff_result_6),
							.diff_7		 (diff_result_7));
							

//Part 3: Statements ------------------------------------------------------------
	always @(posedge clk) begin
		//load
		if (rst) begin 
			ORG_partial <= 64'b0;
			CUR_partial <= 64'b0;
		end else begin  
			if(ENABLE_DIFF) begin
			
				ORG_partial <= ORG[(counter*64)+:64];
				CUR_partial <= CUR[(counter*64)+:64]; 				
			end
		end
			$display("counter: %d", counter);
			
			$display("0: %d",diff_result_0);
			$display("1: %d",diff_result_1);
			$display("2: %d",diff_result_2);
			$display("3: %d",diff_result_3);
			$display("4: %d",diff_result_4);
			$display("5: %d",diff_result_5);
			$display("6: %d",diff_result_6);
			$display("7: %d",diff_result_7);		
	end	
endmodule
