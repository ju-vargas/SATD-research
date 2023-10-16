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
					 output reg [2:0] count,
					 output reg 		enable_diff,
					 output reg			enable_ht_horizontal,
					 output reg 		enable_shift_buffer,
					 output reg			shift_flag,
					 output reg			vertical_flag,
					 output reg			enable_ht_vertical,
					 output reg			end_vertical_flag,
					 output reg			enable_absolute,
					 output reg			enable_sum,
					 output reg			end_sum_flag);

	//duvida!! colocar esse sinais como output reg ou como wires????
	
	parameter 	stage_zero =0,
					stage_one  =1,
					stage_two  =2,
					stage_three=3;
				 
	//outputs 
		always @(posedge clk) begin
			if(reset) begin
				stage                <=0;  	   		 
				count					   <=0;
				enable_diff  		   <=0;
				enable_ht_horizontal <=0;	
				enable_shift_buffer	<=0;	
				shift_flag				<=0;
				vertical_flag			<=0;
				enable_ht_vertical	<=0;
				end_vertical_flag		<=0;
				enable_absolute		<=0;
				enable_sum				<=0;
				end_sum_flag				<=0;
			end
			else begin
				case (stage)
					stage_zero: 
						shift_flag <= ~shift_flag;
					
					stage_one: 
						case(count)
							0:
								enable_diff <= ~enable_diff;
							
							1: begin
								enable_ht_horizontal <= ~enable_ht_horizontal;
								enable_shift_buffer	<= ~enable_shift_buffer;
							end
							
							2: begin
							end
							
							3: begin
							end
							
							4: begin
								enable_diff <= ~enable_diff; 
								shift_flag  <= ~shift_flag; 
							end
							
							5: begin
								enable_ht_horizontal <= ~enable_ht_horizontal;
								vertical_flag 			<= ~vertical_flag;
								enable_ht_vertical	<= ~enable_ht_vertical;
							end
							6: begin
							end
							
							7: begin
							end							
						
						endcase
						
					
					stage_two: 
						case(count)
							0:
								end_vertical_flag <=  ~end_vertical_flag;
							1: begin
								enable_absolute  <= ~enable_absolute;
								enable_sum		  <= ~enable_sum; 
							end
						
							2: begin
								enable_ht_vertical <= ~enable_ht_vertical; 
								end_vertical_flag 	 <= ~end_vertical_flag;
							end
							
							3: begin
							end
							
							4: begin
							end
							
							5: begin
								enable_absolute <= ~enable_absolute;
								end_sum_flag 	 <= ~end_sum_flag;
							end
							6: begin
							end
							
							7: begin
							end
						endcase
					
					
					stage_three: 
						case(count)
							0: begin
								enable_sum  = ~enable_sum;
								end_sum_flag = ~end_sum_flag;
							end
					
							1: begin
							end
						endcase
				endcase
			end
		end

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
