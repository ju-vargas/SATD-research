`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 15:30:32
// Design Name: 
// Module Name: abs_sum
// Project Name: 
// Target Devices: 
// Tool Versions: 
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
module absolute_sum #(parameter WIDTH = 0, parameter NUM_INPUTS = 0, parameter ITERATIONS = 0) ( input  clk,
						 input  rst,
						 input  ena,
                         input wire signed [WIDTH:0] diff_0,
                         input wire signed [WIDTH:0] diff_1,
                         input wire signed [WIDTH:0] diff_2,
                         input wire signed [WIDTH:0] diff_3,
                         input wire signed [WIDTH:0] diff_4,
                         input wire signed [WIDTH:0] diff_5,
                         input wire signed [WIDTH:0] diff_6,
                         input wire signed [WIDTH:0] diff_7,
                         output reg [(WIDTH+ITERATIONS+3):0] sad); 
        
//------------------------------------------------------------------------------------------
    /*
        WIDTH vai mudar de acordo com a aproximacao
        mas isso eu decido na hora de instanciar
        a quantidade de regs tb mudaria de acordo com NUM_INPUTS, mas isso eh a se pensar no futuro
            talvez tenha o maximo e alguns sejam desabilitados
            talvez isso nem mude 
            
            
        NAO DA pra esquecer de resetar, especialmente por causa do sad!!
    */
    
                         
//Part 2: Declarations ---------------------------------------------------------------------	
    reg [(WIDTH+1):0] layer0 [3:0];
    reg [(WIDTH+2):0] layer1 [1:0];
    reg [(WIDTH+3):0] layer2;

//Part - Instatiation: ---------------------------------------------------------------------
//Part 3: Statements ----------------------------------------------------------------------

	always @(posedge clk) begin
		if(ena) begin
			if(rst) begin
				layer0[0] <= 0;
				layer0[1] <= 0;
				layer0[2] <= 0;
				layer0[3] <= 0;
				layer1[0] <= 0;
				layer1[1] <= 0;
				layer2    <= 0;
				sad       <= 0;
			end else
			begin 
            
                //layer0[0] <= diff_0 + diff_1;
                layer0[0] <= (diff_0[WIDTH]) ?
                                ((diff_1[WIDTH]) ?
                                    (~(diff_0) + 1) + (~(diff_1) + 1)
                                    :
                                    (~(diff_0) + 1) + diff_1)
                                :
                                ((diff_1[WIDTH]) ?
                                    diff_0 + (~(diff_1) + 1)
                                    :
                                    diff_0 + diff_1);
				
                //layer0[1] <= diff_2 + diff_3;
                layer0[1] <= (diff_2[WIDTH]) ?
                                ((diff_3[WIDTH]) ?
                                    (~(diff_2) + 1) + (~(diff_3) + 1)
                                    :
                                    (~(diff_2) + 1) + diff_3)
                                :
                                ((diff_3[WIDTH]) ?
                                    diff_2 + (~(diff_3) + 1)
                                    :
                                    diff_2 + diff_3);


                //layer0[2] <= diff_4 + diff_5;
                layer0[2] <= (diff_4[WIDTH]) ?
                                ((diff_5[WIDTH]) ?
                                    (~(diff_4) + 1) + (~(diff_5) + 1)
                                    :
                                    (~(diff_4) + 1) + diff_5)
                                :
                                ((diff_5[WIDTH]) ?
                                    diff_4 + (~(diff_5) + 1)
                                    :
                                    diff_4 + diff_5);


                //layer0[3] <= diff_6 + diff_7;
                layer0[3] <= (diff_6[WIDTH]) ?
                                ((diff_7[WIDTH]) ?
                                    (~(diff_6) + 1) + (~(diff_7) + 1)
                                    :
                                    (~(diff_6) + 1) + diff_7)
                                :
                                ((diff_7[WIDTH]) ?
                                    diff_6 + (~(diff_7) + 1)
                                    :
                                    diff_6 + diff_7);
                
                
                
                layer1[0] <= layer0[0] + layer0[1];
                layer1[1] <= layer0[2] + layer0[3];
                layer2    <= layer1[0] + layer1[1];
                sad       <= sad + layer2;
            end
		end
	end	


    
                         
endmodule
