`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:27 11/02/2023 
// Design Name: 
// Module Name:    differences_tb 
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
module differences_tb(
    );


	//parametros
   parameter CLK_PERIOD = 2;  
	integer count = 0;
	
	//sinais de testbench
	reg clk;
	reg reset;
	wire enable; 
	
	//entradas e saidas pra teste
	wire [63:0] input_ORG; 
	wire [63:0] input_CUR;
	wire signed [8:0]  diff_result_0;
	wire signed [8:0]  diff_result_1;
	wire signed [8:0]  diff_result_2;
	wire signed [8:0]  diff_result_3;
	wire signed [8:0]  diff_result_4;
	wire signed [8:0]  diff_result_5;
	wire signed [8:0]  diff_result_6;
	wire signed [8:0]  diff_result_7;

	
	
	//module instantiation 		
	differences diff(	.clk 	 		(clk),
							.rst	 		(reset),
							.ena			(enable),
							.ORG 			(input_ORG),
							.CUR 			(input_CUR),
							.diff_0		(diff_result_0),
							.diff_1 		(diff_result_1),
							.diff_2		(diff_result_2),
							.diff_3		(diff_result_3),
							.diff_4		(diff_result_4),
							.diff_5		(diff_result_5),
							.diff_6		(diff_result_6),
							.diff_7		(diff_result_7));
						 
	//assign input_ORG = {60'b0, 4'b1111};
	//assign input_CUR = {60'b0, 4'b0011};
	
	assign input_ORG = 64'b0011011010101101111010110011001100110011001110111101101101001001;
	assign input_CUR = 64'b1100101101110010001110111011000011010110101000111000101011001001;
	assign enable = 1'b1;
	
	initial begin
		clk 	<= 0;
		reset <= 1;
	end
	
	//geracao do sinais		
	always begin
		#CLK_PERIOD clk = ~clk; 
		reset <= 0;

      count = count + 1;
      if (count == CLK_PERIOD*5) begin
          $stop; 
		end	
	end

endmodule
