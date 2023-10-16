`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:35 10/10/2023 
// Design Name: 
// Module Name:    control 
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
module control( input clk,
					 input reset,
					 output reg [1:0] stage, 
					 output reg [2:0] count);

	
	parameter 	stage_zero =0,
					stage_one  =1,
					stage_two  =2,
					stage_three=3;
				 
	parameter 	zero  =0,
					one   =1,
					two   =2,
					three =3,
					four  =4,
					five   =5,
					six   =6,
					seven =7;


	//transitions
	always @(posedge clk) begin
		if(reset) begin
			stage <= stage_zero;
			count <= 0;
		end 
		
		else begin
			case (stage) 
				stage_zero: 
					stage <= stage_one;


				stage_one: 
					if (count === 7) begin
						count <= 0;
						stage <= stage_two; 
					end		
					
					else 
						count <= count + 1; 
						
				stage_two: 
					if (count === 7) begin
						count <= 0;
						stage <= stage_three; 
					end

					else 
						count <= count + 1; 

				stage_three: 
					if (!count)
						count <= count + 1; 
					
					else begin
						stage <= stage_zero;
						count <= 0; 
					end
			endcase
		end
	end
					


endmodule
