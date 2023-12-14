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
					output wire RESET_DIFF,
					output wire ENABLE_SUM,
					output wire RESET_SUM,
					output wire ENABLE_HT_H,
                    output wire SEL_HT_H,
                    output wire RESET_HT_H,
                    output wire ENABLE_HT_V,
                    output wire RESET_HT_V);



//Part 2: Declarations ----------------------------------------------------------
	reg [1:0] state;
	reg [1:0] nx_state;

	parameter STATE_A = 2'b00;
	parameter STATE_B = 2'b01;
	parameter STATE_C = 2'b10;
	parameter STATE_D = 2'b11;
	/*
		MUDAR O NX_STATE pq criou um LATCH, precisa ser fio, combinacional 
		ja sei como mudar, so fazer agora, um ternario com os estados em um fio 
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
    
    /*
       os enables vao mudar posteriormente em funcao do pipeline
       especialmente em funcao de sinais de controle do SATD 

     //assign ENABLE_DIFF    = (state  == STATE_D) ? 1'b0 : 1'b1;


       os resets tambem. a ideia agora eh fazer funcionar pro teste
    */    
    
    assign ENABLE_DIFF    = 1'b1; 
	assign ENABLE_COUNTER = (state  == STATE_B || state == STATE_C) ? 1'b1 : 1'b0;
	assign ENABLE_SUM     = 1'b1; 
    assign ENABLE_HT_H    = 1'b1;
	assign ENABLE_HT_V    = 1'b1;
	
	assign RESET_DIFF  	  = ((state == STATE_A) || (state == STATE_D)) ? 1'b1 : 1'b0;
    assign RESET_SUM      = (state  == STATE_A) ? 1'b1 : 1'b0;
    //assign RESET_HT_H     = (state  == STATE_A) ? 1'b1 : 1'b0;
    assign RESET_HT_H     = (state  == STATE_A) ? 1'b1 : 1'b0;
    assign RESET_HT_V     = (state  == STATE_A) ? 1'b1 : 1'b0;
    
    assign SEL_HT_H       = ~counter[0]; 
endmodule
