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
//Part 1: Module Header ---------------------------------------------------------
module control( input  clk,
					 input  reset,
					 output reg [9:0] out_signal,
					 output reg [1:0] state,
					 output reg [2:0] count); 
					 
		/*
		 out_signals[0] enable_diff,
		 out_signals[1] enable_ht_horizontal,
		 out_signals[2] enable_shift_buffer,
		 out_signals[3] shift_flag,
		 out_signals[4] vertical_flag,
		 out_signals[5] enable_ht_vertical,
		 out_signals[6] end_vertical_flag,
		 out_signals[7] enable_absolute,
		 out_signals[8] enable_sum,
		 out_signals[9] end_sum_flag);		
		*/			 

		/*
		A principio, a forma da discricao dos estados pode estar errada
		-> a logica combinacional dos proximos estados deveria estar na parte combinacional, colocando em um reg de nx_state
		-> a parte com clk so faria state <= nx_state

		*/

					
//Part 2: Declarations ----------------------------------------------------------

	
	parameter 	state_zero =0,
					state_one  =1,
					state_two  =2,
					state_three=3;	
					
//Part 3: Statements ------------------------------------------------------------

	//FSM State Register
	always @(posedge clk or posedge reset) begin
		
		if(reset) begin
			state		  <= state_zero;
			count 	  <= 0;
			out_signal <= 0;
		end else begin
			case (state) 
				state_zero: 
					state <= state_one;
					
				state_one: 
					if (count === 7) begin
						count <= 0;
						state <= state_two; 
					end else 
						count <= count + 1; 
						
				state_two: 
					if (count === 7) begin
						count <= 0;
						state <= state_three; 
					end else 
						count <= count + 1; 
						
				state_three: 
					if (!count)
						count <= count + 1; 
					
					else begin
						state <= state_zero;
						count <= 0; 
					end
			endcase
		end
	end
				


	//FSM combinational logic
	always @(state or count) begin
		case (state)
			state_zero: 
				out_signal[3] <= 1;
			
			state_one: 
				case(count)
					0:
						out_signal[0] <= 1;
					1: begin
						out_signal[1] <= 1;
						out_signal[2] <= 1;
					end
					2: ;
					3: ;
					4: begin
						out_signal[0] <= 0; 
						out_signal[3] <= 0; 
					end
					5: begin
						out_signal[1] <= 0;
						out_signal[4] <= 1;
						out_signal[5] <= 1;
					end
					6: ;
					7: ;							
				endcase
				
			
			state_two: 
				case(count)
					0:
						out_signal[6] <= 1;
					1: begin
						out_signal[7] <= 1;
						out_signal[8] <= 1; 
					end
					2: begin
						out_signal[5] <= 0; 
						out_signal[4] <= 1;
					end
					3: ;
					4: ;
					5: begin
						out_signal[7] <= 0;
						out_signal[9] <= 1;
					end
					6: ;
					7: ;
				endcase
			
			
			state_three: 
				case(count)
					0: begin
						out_signal[8] <= 0;
						out_signal[9] <= 0;
					end
					1: begin
						out_signal[2] <= 0;
						out_signal[4] <= 0;
						out_signal[6] <= 0;
					end
			endcase
		endcase
	end

		


endmodule
