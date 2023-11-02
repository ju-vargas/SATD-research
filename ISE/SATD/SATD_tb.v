`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:19 10/27/2023 
// Design Name: 
// Module Name:    SATD_tb 
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

//////////////////////////////////////////////////////////////////////////////////
module SATD_tb(
    );

	//parametros
   parameter CLK_PERIOD = 2;  
	integer count = 0;
	//sinais de testbench
	reg clk;
	reg reset;
	
	//entradas e saidas pra teste
	wire [63:0] input_ORG; 
	wire [63:0] input_CUR;
	wire signed [8:0]  diff_result;
	
	
	//module instantiation 		
	SATD satd(	.clk 	 		(clk),
					.rst	 		(reset),
					.ORG 			(input_ORG),
					.CUR 			(input_CUR),
					.diff 			(diff_result));

	//assign input_ORG = {60'b0, 4'b1111};
	//assign input_CUR = {60'b0, 4'b0011};
	
	assign input_ORG = 64'b0011011010101101111010110011001100110011001110111101101101001001;
	assign input_CUR = 64'b1100101101110010001110111011000011010110101000111000101011001001;

	initial begin
		clk 	<= 0;
		reset <= 1;
	end
	
	//geracao do sinais		
	always begin
		#CLK_PERIOD clk = ~clk; 
		  
		reset <= 0;

      count = count + 1;
      if (count == CLK_PERIOD*15) begin
          $stop; 
		end	
	end

endmodule
