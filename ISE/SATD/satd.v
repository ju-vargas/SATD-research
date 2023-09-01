`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:17 09/01/2023 
// Design Name: 
// Module Name:    satd 
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
module calcdiff(
	 input wire CLK,
	 input wire RST,
    input wire [7:0] ORG [0:7],
    input wire [7:0] CUR [0:7],
	 output reg [8:0] diff [0:7]);

	 always @(posedge CLK) begin
		if (RST) begin
			diff[0] <= 0;
			diff[1] <= 0;
			diff[2] <= 0;
			diff[3] <= 0;
			diff[4] <= 0;
			diff[5] <= 0;
			diff[6] <= 0;
			diff[7] <= 0;
			
			//acho que nao precisa disso, e pode ser só 
			diff <= 0; 
			//descobrir 
			
		end
		
		else begin
			diff[0] <= ORG[0] - CUR[0];
			diff[1] <= ORG[1] - CUR[1];
			diff[2] <= ORG[2] - CUR[2];
			diff[3] <= ORG[3] - CUR[3];
			diff[4] <= ORG[4] - CUR[4];
			diff[5] <= ORG[5] - CUR[5];
			diff[6] <= ORG[6] - CUR[6];
			diff[7] <= ORG[7] - CUR[7];
		end
	 end
endmodule
