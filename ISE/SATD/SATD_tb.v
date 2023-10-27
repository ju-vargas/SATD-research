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
//
//////////////////////////////////////////////////////////////////////////////////
module SATD_tb(
    );

	//parametros
   parameter CLK_PERIOD = 2;  
	
	//sinais de testbench
	reg clk;
	reg reset;
	reg [8:0] diff_result;
	
	reg [63:0] ORG_input; 
	reg [63:0] CUR_input;
	
	//instancia do modulo control
	SATD satd(	.clk 	 		(clk),
					.rst	 		(reset),
					.ORG 			(ORG_input),
					.CUR 			(CUR_input),
					.out_diff 	(diff_result));
				 
	initial begin
		clk 	<= 0;
		reset <= 1;
		diff_result <= 0;
	end
			
	//geracao do sinais
	always begin
		#CLK_PERIOD clk = ~clk;  
		
		reset <= 0;
		ORG_input <= {64{0'b1111}};
		CUR_input <= {64{0'b0011}};
		
		$display("Inverti o clock");
		
		$display("Ciclo de Clock: %0d, clock: %b", $time, clk);
		#CLK_PERIOD; // Aguarde um ciclo de clock
	end

endmodule
