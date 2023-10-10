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
				input reset);
	
	reg [1:0] stage;
	reg [2:0] count;
	
	parameter 	stage_zero =0,
				stage_one  =1,
				stage_two  =2,
				stage_three=3;
				 
	
	always @(posedge clk) begin
		if(reset) begin
			stage <= stage_zero;
			count <= 0;
		end 
		
		
		
		else begin
			//outputs	
			case(stage) 
				stage_zero: begin
					case(count) 

					endcase
				end

				stage_one: begin
					case(count) 
					endcase
				end

				stage_two: begin
					case(count) 
					endcase
				end

				stage_three: begin
					case(count) 
					endcase				
				end
			endcase
			
			//transition
			case(stage) 
				stage_zero: 
					stage <= stage_one;
					
				
				stage_one: 
					case(count) 
						0: 
							count <= 1;
						1: 
							count <= 2;
						2: 
							count <= 3;
						3:
							count <= 4;
						4: 
							count <= 5;
						5: 
							count <= 6;
						6: 
							count <= 7;
						7: 
							count <= 8;
					endcase

				
				stage_two: begin
					case(count) 
					endcase
				end
	
				stage_three: begin
					case(count) 
					endcase				
				end
		
			endcase
					
		end
		
	end


endmodule
