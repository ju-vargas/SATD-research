`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:01 11/02/2023 
// Design Name: 
// Module Name:    control_satd 
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
module control_satd(input clk,
					input rst,
		          	input  wire [3:0] counter,
					output wire ENABLE_COUNTER,
					output wire ENABLE_DIFF,
					output wire RESET_DIFF);


//Part 2: Declarations ----------------------------------------------------------
	reg [1:0] state;
	reg [1:0] nx_state;

	parameter STATE_A = 2'b00;
	parameter STATE_B = 2'b01;
	parameter STATE_C = 2'b10;
	parameter STATE_D = 2'b11;
	/*
		tem uma logica q usa nx_state mas eu achei complicada 
		pelo menos POR ENQUANTO 
	*/
	
//Part 3: Statements ------------------------------------------------------------
	//FSM State Register
	always @(posedge clk) begin
		if(rst) begin
			state <= STATE_A;

			
		end else begin
			state <= nx_state; 
		end
	end
	
	//FSM combinational logic
	//faz sentido
	//desse jeito nx_state vira um latch
	//e isso nao quero 
	always @(state or counter) begin
		case(state)
			STATE_A: begin
					nx_state <= STATE_B; 				
				end
			STATE_B: begin
					nx_state <= STATE_C; 
				end
			STATE_C: begin
					if (counter == 4'b1111) begin
						nx_state <= STATE_D;
						end
				end
			STATE_D: begin
					$display("to no D");
				end
		endcase
	end


	//combinational output
	assign ENABLE_DIFF = 1'b1; 
	//assign ENABLE_DIFF 	 = (state  == STATE_D) ? 1'b0 : 1'b1;
	assign RESET_DIFF  	 = ((state == STATE_A) || (state == STATE_D)) ? 1'b1 : 1'b0;
	assign ENABLE_COUNTER = (state  == STATE_C) ? 1'b1 : 1'b0;

endmodule
