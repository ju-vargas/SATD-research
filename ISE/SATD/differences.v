`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:30 10/24/2023 
// Design Name: 
// Module Name:    differences 
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
module differences( input  clk,
						 input  rst,
						 input  ena,
						 input wire [63:0] ORG,
						 input wire [63:0] CUR,
						 output reg signed [8:0]diff_0,
						 output reg signed [8:0]diff_1,
						 output reg signed [8:0]diff_2,
						 output reg signed [8:0]diff_3,
						 output reg signed [8:0]diff_4,
						 output reg signed [8:0]diff_5,
						 output reg signed [8:0]diff_6,
						 output reg signed [8:0]diff_7);
						 	
//Part 2: Declarations ----------------------------------------------------------
	
//Part 3: Statements ------------------------------------------------------------

	always @(posedge clk) begin
	
		if(ena) begin
			if(rst) begin
				diff_0 <= 0;
				diff_1 <= 0;
				diff_2 <= 0;
				diff_3 <= 0;
				diff_4 <= 0;
				diff_5 <= 0;
				diff_6 <= 0;
				diff_7 <= 0;
			end else
			begin 
				diff_0 <= ({1'b0, ORG[7:0]}   - {1'b0, CUR[7:0]});
				diff_1 <= ({1'b0, ORG[15:8]}  - {1'b0, CUR[15:8]});
				diff_2 <= ({1'b0, ORG[23:16]} - {1'b0, CUR[23:16]});
				diff_3 <= ({1'b0, ORG[31:24]} - {1'b0, CUR[31:24]});
				diff_4 <= ({1'b0, ORG[39:32]} - {1'b0, CUR[39:32]});
				diff_5 <= ({1'b0, ORG[47:40]} - {1'b0, CUR[47:40]});
				diff_6 <= ({1'b0, ORG[55:48]} - {1'b0, CUR[55:48]});
				diff_7 <= ({1'b0, ORG[63:56]} - {1'b0, CUR[63:56]});				
			end
		end
	end	
	
endmodule
