`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:51 09/01/2023 
// Design Name: 
// Module Name:    h_transform 
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
module h_transform(
	input wire [7:0] diff [7:0]);
	
	reg [8:0] h1 [7:0];
	
	
	always @(posedge CLK) begin
		if(RST) begin
			h1 <= 0; 
		end

		else begin
			h1[0] <= diff[0] + diff[2]; 
			h1[1] <= diff[1] + diff[3];
			h1[2] <= diff[0] - diff[2];
			h1[3] <= diff[1] - diff[3];
			h1[4] <= diff[4] + diff[6];
			h1[5] <= diff[5] + diff[7];
			h1[6] <= diff[4] - diff[6];
			h1[7] <= diff[5] - diff[7];
			
			h1[0] <= diff[0] + diff[2]; 
			h1[1] <= diff[1] + diff[3];
			h1[2] <= diff[0] - diff[2];
			h1[3] <= diff[1] - diff[3];
			h1[4] <= diff[4] + diff[6];
			h1[5] <= diff[5] + diff[7];
			h1[6] <= diff[4] - diff[6];
			h1[7] <= diff[5] - diff[7];
			
		end 
	

	end





endmodule
