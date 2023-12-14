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
 module SATD #(parameter WIDTH = 0, parameter SAMPLES = 0, parameter ITERATIONS = 0)(input clk,
			 input rst,
			 input wire [(WIDTH*SAMPLES*(ITERATIONS+1))-1:0] ORG,
		     input wire [(WIDTH*SAMPLES*(ITERATIONS+1))-1:0] CUR);
	
//------------------------------------------------------------------------------------------

                /*
                        parametros
                            -- WIDTH: quantidade de bits da amostra dos dados de CUR e REG
                            -- SAMPLES: quantos pixels por vez serao enviados
                */
                

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
	reg unsigned [3:0] counter;
	   

    wire ENABLE_DIFF;
    wire ENABLE_COUNTER;
    wire ENABLE_SUM;

    wire ENABLE_HT_H;
    wire SEL_HT_H;

    wire ENABLE_HT_V;
    
    wire RESET_DIFF;
    wire RESET_SUM; 
    wire RESET_HT_H;
    wire RESET_HT_V;
    
	wire signed [WIDTH:0] diff_result_0;
    wire signed [WIDTH:0] diff_result_1;
    wire signed [WIDTH:0] diff_result_2;
    wire signed [WIDTH:0] diff_result_3;
    wire signed [WIDTH:0] diff_result_4;
    wire signed [WIDTH:0] diff_result_5;
    wire signed [WIDTH:0] diff_result_6;
    wire signed [WIDTH:0] diff_result_7;
    
    wire signed [(WIDTH+4):0] hth_result_0;
    wire signed [(WIDTH+4):0] hth_result_1;
    wire signed [(WIDTH+4):0] hth_result_2;
    wire signed [(WIDTH+4):0] hth_result_3;
    wire signed [(WIDTH+4):0] hth_result_4;
    wire signed [(WIDTH+4):0] hth_result_5;
    wire signed [(WIDTH+4):0] hth_result_6;
    wire signed [(WIDTH+4):0] hth_result_7;
    
    wire signed [(WIDTH+7):0] htv_result_0;
    wire signed [(WIDTH+7):0] htv_result_1;
    wire signed [(WIDTH+7):0] htv_result_2;
    wire signed [(WIDTH+7):0] htv_result_3;
    wire signed [(WIDTH+7):0] htv_result_4;
    wire signed [(WIDTH+7):0] htv_result_5;
    wire signed [(WIDTH+7):0] htv_result_6;
    wire signed [(WIDTH+7):0] htv_result_7;
                                

    
    wire [(WIDTH+ITERATIONS+3):0] sad_result; 
//Part Instatiation: -----------------------------------------------------------------------
   control_satd control (.clk				(clk),
						 .rst				(rst),
						 .counter			(counter),
						 .ENABLE_COUNTER	(ENABLE_COUNTER),
						 .ENABLE_DIFF		(ENABLE_DIFF),
						 .RESET_DIFF		(RESET_DIFF),
						 .ENABLE_SUM        (ENABLE_SUM),
						 .RESET_SUM         (RESET_SUM),
						 .ENABLE_HT_H       (ENABLE_HT_H),
                         .SEL_HT_H          (SEL_HT_H),
                         .RESET_HT_H        (RESET_HT_H),
                         .ENABLE_HT_V       (ENABLE_HT_V),
                         .RESET_HT_V        (RESET_HT_V));


								 
	differences #(.WIDTH (WIDTH), .SAMPLES (SAMPLES)) diff
	                (.ORG       (ORG[(counter*(SAMPLES*WIDTH))+:(SAMPLES*WIDTH)]),
                     .CUR       (CUR[(counter*(SAMPLES*WIDTH))+:(SAMPLES*WIDTH)]),
                     .diff_0    (diff_result_0),
                     .diff_1    (diff_result_1),
                     .diff_2    (diff_result_2),
                     .diff_3    (diff_result_3),
                     .diff_4    (diff_result_4),
                     .diff_5    (diff_result_5),
                     .diff_6    (diff_result_6),
                     .diff_7    (diff_result_7));

    //transformada horizontal 
    ht_horizontal #(.WIDTH (8), .SAMPLES (SAMPLES)) ht_h 
                    (.clk          (clk),
                     .rst          (RESET_HT_H),
                     .ena          (ENABLE_HT_H),
                     .sel          (SEL_HT_H),
                     .diff_0       (diff_result_0),
                     .diff_1       (diff_result_1),
                     .diff_2       (diff_result_2),
                     .diff_3       (diff_result_3),
                     .diff_4       (diff_result_4),
                     .diff_5       (diff_result_5),
                     .diff_6       (diff_result_6),
                     .diff_7       (diff_result_7),
                     .hth_0        (hth_result_0),
                     .hth_1        (hth_result_1),
                     .hth_2        (hth_result_2),
                     .hth_3        (hth_result_3),
                     .hth_4        (hth_result_4),
                     .hth_5        (hth_result_5),
                     .hth_6        (hth_result_6),
                     .hth_7        (hth_result_7));


    ht_vertical #(.WIDTH (8), .SAMPLES (SAMPLES)) ht_v
                   (.clk            (clk),
                    .rst            (RESET_HT_V),
                    .ena            (ENABLE_HT_V),             
                    .input_buffer_0 (hth_result_0),
                    .input_buffer_1 (hth_result_1),
                    .input_buffer_2 (hth_result_2),
                    .input_buffer_3 (hth_result_3),
                    .input_buffer_4 (hth_result_4),
                    .input_buffer_5 (hth_result_5),
                    .input_buffer_6 (hth_result_6),
                    .input_buffer_7 (hth_result_7),
                    .htv_0          (htv_result_0),
                    .htv_1          (htv_result_1),
                    .htv_2          (htv_result_2),
                    .htv_3          (htv_result_3),
                    .htv_4          (htv_result_4),
                    .htv_5          (htv_result_5),
                    .htv_6          (htv_result_6),
                    .htv_7          (htv_result_7));
                                 
          
    //aq mandar como width a largura da saida das transformadas 
    absolute_sum #(.WIDTH (WIDTH + 7), .SAMPLES (SAMPLES), .ITERATIONS (ITERATIONS)) abs_sum 
                   (.clk           (clk), 
                    .rst           (RESET_SUM),
                    .ena           (ENABLE_SUM),
                    .diff_0        (diff_result_0),
                    .diff_1        (diff_result_1),
                    .diff_2        (diff_result_2),
                    .diff_3        (diff_result_3),
                    .diff_4        (diff_result_4),
                    .diff_5        (diff_result_5),
                    .diff_6        (diff_result_6),
                    .diff_7        (diff_result_7),
                    .sad           (sad_result)); 
                    







//Part 3: Statements ----------------------------------------------------------------------
	always @(posedge clk) begin
		if (rst) begin 
			counter <= 0; 
		end else begin 
			if (ENABLE_COUNTER) begin		
			    //! aq tem margem pra erro. counter pode nao suportar o tam de iterations				
				if (counter  == ITERATIONS) 
					counter <= 0;					
				else      
					counter <= counter + 1;
			end
		end				
	end	
	
endmodule
