`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:05 09/01/2023 
// Design Name: 
// Module Name:    shift_buffer 
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
module shift_buffer(
	input wire CLK, 
	input wire RST,
	input wire [9:0] data [0:7],
	input wire [1:0] cycle
	);

	reg [9:0] buffer [0:31]; 
	
	//---essas etapas (store, load, shift)vão ser selecionadas de acordo com o estado 
	//---estados ficam nos registradores
	//---a principio n sei onde usaria assign 
	
	always @(posedge CLK) begin
		//STORE
		//a ideia eh que de acordo com o ciclo (estado) o buffer correto receba o valor
		case (cycle)
			2'b00 : 
				begin
					buffer[0:35] 	<= {36{1'b0}};
					buffer[144:179] <= {36{1'b0}}; 
				end
			2'b01 : 
				begin
					buffer[36:71] 	<= {36{1'b0}};
					buffer[180:215] <= {36{1'b0}}; 
				end
			2'b10 : 
				begin
					buffer[72:107] 	<= {36{1'b0}};
					buffer[216:251] <= {36{1'b0}}; 
				end			
			2'b11 : 
				begin
					buffer[108:143] <= {36{1'b0}};
					buffer[252:287] <= {36{1'b0}}; 
				end
		endcase
	
		//SHIFT
		
		//LOAD
		
		
	end

	
	

endmodule
