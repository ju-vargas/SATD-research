`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:10 10/11/2023 
// Design Name: 
// Module Name:    control_tb 
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
module control_tb;
	
	//parametros
   parameter CLK_PERIOD = 2;  
	
	//sinais de testbench
	reg clk;
	reg reset;
	wire [1:0] stage; 
   wire [2:0] count; 
	
		//instancia do modulo control
	control u0(	.clk 	 (clk),
					.reset (reset),
					.stage (stage),
					.count (count));
					
					
	initial begin
		clk 	<= 0;
		reset <= 1;
	end

			
	//geracao do sinais
	always begin
		#CLK_PERIOD clk = ~clk;  
		reset <= 0;

		
		$display("Inverti o clock");
		
		$display("Ciclo de Clock: %0d, clock: %b, stage: %b, count: %b", $time, clk, stage, count);
		#CLK_PERIOD; // Aguarde um ciclo de clock
	end
	
	
endmodule
