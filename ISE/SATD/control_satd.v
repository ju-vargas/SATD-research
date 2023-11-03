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
						  output reg ENABLE_DIFF,
						  output reg RESET_DIFF,
						  output reg [3:0] COUNTER);


//Part 2: Declarations ----------------------------------------------------------
	reg [3:0] state;
	reg [3:0] nx_state;
	
//Part 3: Statements ------------------------------------------------------------
	//FSM State Register
	always @(posedge clk) begin
		if(rst) begin
			state 		<= 4'b0;
			COUNTER 		<= 4'b0;
			ENABLE_DIFF <= 1'b0; 
			RESET_DIFF 	<= 1'b0;
			$display("reset");
			
		end else begin
			case (state)
				0: state <= 4'b0001;
				1: state <= 4'b0010;
				2: begin
						if(COUNTER == 15)
							COUNTER <= 4'b0; 
						else 
							COUNTER <= COUNTER + 1;						
					end 
			endcase
		end
	end
	
	//FSM combinational logic
	always @(state) begin
		case(state)
			0: begin
					ENABLE_DIFF <= 1;
					RESET_DIFF	<= 1; 
					
					$display("estado 0");

				end
			1: begin
					RESET_DIFF <= 0;
					$display("estado 1");

				end
			2: begin
					$display("estado 2");

				end
		endcase
	end

endmodule
