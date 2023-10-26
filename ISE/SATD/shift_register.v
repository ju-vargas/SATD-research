`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:54 10/26/2023 
// Design Name: 
// Module Name:    shift_register 
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

//registrador que manda 8 diferentes valores a cada clk
//////////////////////////////////////////////////////////////////////////////////
module shift_register( input rst,
							  input shift,
							  input wire [7:0] ORG [127:0],
							  input wire [7:0] CUR [127:0]);

//Part 1: Declarations ------------------------------------------------------------
	reg [7:0] ORG_reg [0:127];
	reg [7:0] CUR_reg [0:127];

//Part 3: Statements ------------------------------------------------------------
	always @(posedge clk) begin
		ORG_reg[126:0] <= ORG_reg[127:1];
	end

endmodule
