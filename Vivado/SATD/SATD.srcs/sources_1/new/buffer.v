`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 11:00:10
// Design Name: 
// Module Name: buffer
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
module buffer #(parameter WIDTH = 0, parameter SAMPLES = 0) ( input  clk,
		          	input wire [3:0] counter,
		          	input wire sel,
                    input wire signed [(WIDTH+4):0]hth_0,
                    input wire signed [(WIDTH+4):0]hth_1,
                    input wire signed [(WIDTH+4):0]hth_2,
                    input wire signed [(WIDTH+4):0]hth_3,
                    input wire signed [(WIDTH+4):0]hth_4,
                    input wire signed [(WIDTH+4):0]hth_5,
                    input wire signed [(WIDTH+4):0]hth_6,
                    input wire signed [(WIDTH+4):0]hth_7,
                    output reg signed [(WIDTH+4):0]input_vertical_0,
                    output reg signed [(WIDTH+4):0]input_vertical_1,
                    output reg signed [(WIDTH+4):0]input_vertical_2,
                    output reg signed [(WIDTH+4):0]input_vertical_3,
                    output reg signed [(WIDTH+4):0]input_vertical_4,
                    output reg signed [(WIDTH+4):0]input_vertical_5,
                    output reg signed [(WIDTH+4):0]input_vertical_6,
                    output reg signed [(WIDTH+4):0]input_vertical_7);
//------------------------------------------------------------------------------------------
    /*
    deixar o tamanho do buffer mais generico depois
    */
//Part 2: Declarations ---------------------------------------------------------------------	
    wire [(WIDTH+4):0] hth_result [127:0]; 
    
    
    wire signed [(WIDTH+4):0] buffer_input_0 = (~sel) ? {(WIDTH+4){1'b0}} : hth_0;
    wire signed [(WIDTH+4):0] buffer_input_0 = (~sel) ? {(WIDTH+4){1'b0}} : hth_0;
    wire signed [(WIDTH+4):0] buffer_input_1 = (~sel) ? {(WIDTH+4){1'b0}} : hth_1;
    wire signed [(WIDTH+4):0] buffer_input_3 = (~sel) ? {(WIDTH+4){1'b0}} : hth_2;
    wire signed [(WIDTH+4):0] buffer_input_4 = (~sel) ? {(WIDTH+4){1'b0}} : hth_3;
    wire signed [(WIDTH+4):0] buffer_input_5 = (~sel) ? {(WIDTH+4){1'b0}} : hth_4;
    wire signed [(WIDTH+4):0] buffer_input_6 = (~sel) ? {(WIDTH+4){1'b0}} : hth_5;
    wire signed [(WIDTH+4):0] buffer_input_7 = (~sel) ? {(WIDTH+4){1'b0}} : hth_6;
    wire signed [(WIDTH+4):0] buffer_input_8 = (~sel) ? {(WIDTH+4){1'b0}} : hth_7;
    wire signed [(WIDTH+4):0] buffer_input_9 = (sel)  ? {(WIDTH+4){1'b0}} : hth_0;
    wire signed [(WIDTH+4):0] buffer_input_10 = (sel)  ? {(WIDTH+4){1'b0}} : hth_1;
    wire signed [(WIDTH+4):0] buffer_input_11 = (sel)  ? {(WIDTH+4){1'b0}} : hth_2;
    wire signed [(WIDTH+4):0] buffer_input_12 = (sel)  ? {(WIDTH+4){1'b0}} : hth_3;
    wire signed [(WIDTH+4):0] buffer_input_13 = (sel)  ? {(WIDTH+4){1'b0}} : hth_4;
    wire signed [(WIDTH+4):0] buffer_input_14 = (sel)  ? {(WIDTH+4){1'b0}} : hth_5;
    wire signed [(WIDTH+4):0] buffer_input_15 = (sel)  ? {(WIDTH+4){1'b0}} : hth_6;
    
    
//Part 3: Statements ------------------------------------------------------------

    always @(posedge clk) begin
    
    end

endmodule
