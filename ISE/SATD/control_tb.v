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
	
	reg  reset; 
	wire stage; 
   wire count; 
	
	control u0(	.clk 	 (clk),
					.reset (reset),
					.stage (stage),
					.count (count));
					
				
	initial begin
		
	end
	
	
endmodule
