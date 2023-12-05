`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 10:18:42
// Design Name: 
// Module Name: ht_horizontal
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
module ht_horizontal #(parameter WIDTH = 0, parameter SAMPLES = 0) ( input  clk,
                             input  rst,
                             input  ena,
                             input  sel,
                             input wire signed [WIDTH:0]diff_0,
                             input wire signed [WIDTH:0]diff_1,
                             input wire signed [WIDTH:0]diff_2,
                             input wire signed [WIDTH:0]diff_3,
                             input wire signed [WIDTH:0]diff_4,
                             input wire signed [WIDTH:0]diff_5,
                             input wire signed [WIDTH:0]diff_6,
                             input wire signed [WIDTH:0]diff_7,
                             output reg signed [(WIDTH+4):0]hth_0,
                             output reg signed [(WIDTH+4):0]hth_1,
                             output reg signed [(WIDTH+4):0]hth_2,
                             output reg signed [(WIDTH+4):0]hth_3,
                             output reg signed [(WIDTH+4):0]hth_4,
                             output reg signed [(WIDTH+4):0]hth_5,
                             output reg signed [(WIDTH+4):0]hth_6,
                             output reg signed [(WIDTH+4):0]hth_7);
//------------------------------------------------------------------------------------------
    /*
        sel = 0
            -- faz soma
        sel = 1 
            -- faz subtracao
            
       posso usar o bit de algum sinal, do contador sla
       ainda vou achar uma solucao melhor     
    */
    
    
    
    /*
        são 8 amostras na butterfly 
        NUM_INPUTS = SAMPLES = amostras 
    
    */
//Part 2: Declarations ----------------------------------------------------------
    
    // declaracao das MATRIZES 
    reg [WIDTH:0] diff_buffer  [(SAMPLES-1):0]; 
    reg [WIDTH:0] left_buffer  [(SAMPLES-1):0]; 
    reg [WIDTH:0] right_buffer [(SAMPLES-1):0]; 
    
    reg [(WIDTH+1):0] column0 [(SAMPLES-1):0];
    reg [(WIDTH+2):0] column1 [(SAMPLES-1):0];
    reg [(WIDTH+3):0] column2 [(SAMPLES-1):0];
    
    
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [WIDTH+1:0]column_input_0 = (~sel) ? (right_buffer[0] + left_buffer[0]) : (right_buffer[0] - left_buffer[0]);
    wire signed [WIDTH+1:0]column_input_1 = (~sel) ? (right_buffer[1] + left_buffer[1]) : (right_buffer[1] - left_buffer[1]);
    wire signed [WIDTH+1:0]column_input_2 = (~sel) ? (right_buffer[2] + left_buffer[2]) : (right_buffer[2] - left_buffer[2]);
    wire signed [WIDTH+1:0]column_input_3 = (~sel) ? (right_buffer[3] + left_buffer[3]) : (right_buffer[3] - left_buffer[3]);
    wire signed [WIDTH+1:0]column_input_4 = (~sel) ? (right_buffer[4] + left_buffer[4]) : (right_buffer[4] - left_buffer[4]);
    wire signed [WIDTH+1:0]column_input_5 = (~sel) ? (right_buffer[5] + left_buffer[5]) : (right_buffer[5] - left_buffer[5]);   
    wire signed [WIDTH+1:0]column_input_6 = (~sel) ? (right_buffer[6] + left_buffer[6]) : (right_buffer[6] - left_buffer[6]);
    wire signed [WIDTH+1:0]column_input_7 = (~sel) ? (right_buffer[7] + left_buffer[7]) : (right_buffer[7] - left_buffer[7]);
    
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [WIDTH+1:0]right_input_0 = (~sel) ? diff_buffer[0] : right_buffer[0]; 
    wire signed [WIDTH+1:0]right_input_1 = (~sel) ? diff_buffer[1] : right_buffer[1]; 
    wire signed [WIDTH+1:0]right_input_2 = (~sel) ? diff_buffer[2] : right_buffer[2]; 
    wire signed [WIDTH+1:0]right_input_3 = (~sel) ? diff_buffer[3] : right_buffer[3]; 
    wire signed [WIDTH+1:0]right_input_4 = (~sel) ? diff_buffer[4] : right_buffer[4]; 
    wire signed [WIDTH+1:0]right_input_5 = (~sel) ? diff_buffer[5] : right_buffer[5]; 
    wire signed [WIDTH+1:0]right_input_6 = (~sel) ? diff_buffer[6] : right_buffer[6]; 
    wire signed [WIDTH+1:0]right_input_7 = (~sel) ? diff_buffer[7] : right_buffer[7];     
    
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [WIDTH+1:0]left_input_0 = (~sel) ? diff_0 : left_buffer[0]; 
    wire signed [WIDTH+1:0]left_input_1 = (~sel) ? diff_1 : left_buffer[1]; 
    wire signed [WIDTH+1:0]left_input_2 = (~sel) ? diff_2 : left_buffer[2]; 
    wire signed [WIDTH+1:0]left_input_3 = (~sel) ? diff_3 : left_buffer[3]; 
    wire signed [WIDTH+1:0]left_input_4 = (~sel) ? diff_4 : left_buffer[4]; 
    wire signed [WIDTH+1:0]left_input_5 = (~sel) ? diff_5 : left_buffer[5]; 
    wire signed [WIDTH+1:0]left_input_6 = (~sel) ? diff_6 : left_buffer[6]; 
    wire signed [WIDTH+1:0]left_input_7 = (~sel) ? diff_7 : left_buffer[7];
    
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [(WIDTH+2):0] column1_input_0  = column0[0] + column0[4];
    wire signed [(WIDTH+2):0] column1_input_1 = column0[1] + column0[5];
    wire signed [(WIDTH+2):0] column1_input_2 = column0[2] + column0[6];
    wire signed [(WIDTH+2):0] column1_input_3 = column0[3] + column0[7];
    wire signed [(WIDTH+2):0] column1_input_4 = column0[0] - column0[4]; 
    wire signed [(WIDTH+2):0] column1_input_5 = column0[1] - column0[5]; 
    wire signed [(WIDTH+2):0] column1_input_6 = column0[2] - column0[6];
    wire signed [(WIDTH+2):0] column1_input_7 = column0[3] - column0[7];
                
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [(WIDTH+3):0] column2_input_0 = column1[0] + column1[2]; 
    wire signed [(WIDTH+3):0] column2_input_1 = column1[1] + column1[3]; 
    wire signed [(WIDTH+3):0] column2_input_2 = column1[0] - column1[2];
    wire signed [(WIDTH+3):0] column2_input_3 = column1[1] - column1[3];
    wire signed [(WIDTH+3):0] column2_input_4 = column1[4] + column1[6];
    wire signed [(WIDTH+3):0] column2_input_5 = column1[5] + column1[7];
    wire signed [(WIDTH+3):0] column2_input_6 = column1[4] - column1[6];
    wire signed [(WIDTH+3):0] column2_input_7 = column1[5] - column1[7];

    //cada linha pra UMA AMOSTRA DE n bits                            
    wire signed [(WIDTH+4):0] hth_input_0 = column2[0] + column2[1]; 
    wire signed [(WIDTH+4):0] hth_input_1 = column2[0] - column2[1]; 
    wire signed [(WIDTH+4):0] hth_input_2 = column2[2] + column2[3];
    wire signed [(WIDTH+4):0] hth_input_3 = column2[2] - column2[3];
    wire signed [(WIDTH+4):0] hth_input_4 = column2[4] + column2[5];
    wire signed [(WIDTH+4):0] hth_input_5 = column2[4] - column2[5];
    wire signed [(WIDTH+4):0] hth_input_6 = column2[6] + column2[7];
    wire signed [(WIDTH+4):0] hth_input_7 = column2[6] - column2[7];                    
    
//Part 3: Statements ------------------------------------------------------------

    always @(posedge clk) begin
        if(ena) begin
            if (rst) begin
                /*
                achar um jeito de fazer isso direito
                intankavel ter que fazer na mao assim
                */
                
                //diff_buffer  <= SAMPLES*WIDTH'b0;
                //left_buffer  <= SAMPLES*WIDTH'b0;
                //right_buffer <= SAMPLES*WIDTH'b0;
                
                //column0 <= SAMPLES*(WIDTH+1)'b0;
                //column1 <= SAMPLES*(WIDTH+2)'b0;
                //column2 <= SAMPLES*(WIDTH+3)'b0;
                                
                
                diff_buffer[0] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[1] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[2] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[3] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[4] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[5] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[6] <= {(WIDTH+1){1'b0}}; 
                diff_buffer[7] <= {(WIDTH+1){1'b0}}; 

                left_buffer[0] <= {(WIDTH+1){1'b0}}; 
                left_buffer[1] <= {(WIDTH+1){1'b0}}; 
                left_buffer[2] <= {(WIDTH+1){1'b0}}; 
                left_buffer[3] <= {(WIDTH+1){1'b0}}; 
                left_buffer[4] <= {(WIDTH+1){1'b0}}; 
                left_buffer[5] <= {(WIDTH+1){1'b0}}; 
                left_buffer[6] <= {(WIDTH+1){1'b0}}; 
                left_buffer[7] <= {(WIDTH+1){1'b0}}; 

                right_buffer[0] <= {(WIDTH+1){1'b0}}; 
                right_buffer[1] <= {(WIDTH+1){1'b0}}; 
                right_buffer[2] <= {(WIDTH+1){1'b0}}; 
                right_buffer[3] <= {(WIDTH+1){1'b0}}; 
                right_buffer[4] <= {(WIDTH+1){1'b0}}; 
                right_buffer[5] <= {(WIDTH+1){1'b0}}; 
                right_buffer[6] <= {(WIDTH+1){1'b0}}; 
                right_buffer[7] <= {(WIDTH+1){1'b0}}; 
    
                column0[0] <= {(WIDTH+2){1'b0}}; 
                column0[1] <= {(WIDTH+2){1'b0}}; 
                column0[2] <= {(WIDTH+2){1'b0}}; 
                column0[3] <= {(WIDTH+2){1'b0}}; 
                column0[4] <= {(WIDTH+2){1'b0}}; 
                column0[5] <= {(WIDTH+2){1'b0}}; 
                column0[6] <= {(WIDTH+2){1'b0}}; 
                column0[7] <= {(WIDTH+2){1'b0}}; 
                
                column1[0] <= {(WIDTH+3){1'b0}}; 
                column1[1] <= {(WIDTH+3){1'b0}}; 
                column1[2] <= {(WIDTH+3){1'b0}}; 
                column1[3] <= {(WIDTH+3){1'b0}}; 
                column1[4] <= {(WIDTH+3){1'b0}}; 
                column1[5] <= {(WIDTH+3){1'b0}}; 
                column1[6] <= {(WIDTH+3){1'b0}}; 
                column1[7] <= {(WIDTH+3){1'b0}}; 
                
                column2[0] <= {(WIDTH+4){1'b0}}; 
                column2[1] <= {(WIDTH+4){1'b0}}; 
                column2[2] <= {(WIDTH+4){1'b0}}; 
                column2[3] <= {(WIDTH+4){1'b0}}; 
                column2[4] <= {(WIDTH+4){1'b0}}; 
                column2[5] <= {(WIDTH+4){1'b0}}; 
                column2[6] <= {(WIDTH+4){1'b0}}; 
                column2[7] <= {(WIDTH+4){1'b0}}; 

                hth_0 <= {(WIDTH+5){1'b0}}; 
                hth_1 <= {(WIDTH+5){1'b0}}; 
                hth_2 <= {(WIDTH+5){1'b0}}; 
                hth_3 <= {(WIDTH+5){1'b0}}; 
                hth_4 <= {(WIDTH+5){1'b0}}; 
                hth_5 <= {(WIDTH+5){1'b0}}; 
                hth_6 <= {(WIDTH+5){1'b0}}; 
                hth_7 <= {(WIDTH+5){1'b0}}; 
            end
            else begin
                
                /*
                load when sel = 0
                */ 
                right_buffer[0] <= right_input_0;
                right_buffer[1] <= right_input_1;
                right_buffer[2] <= right_input_2;
                right_buffer[3] <= right_input_3;
                right_buffer[4] <= right_input_4;
                right_buffer[5] <= right_input_5;
                right_buffer[6] <= right_input_6;
                right_buffer[7] <= right_input_7;

                /*
                    load when sel = 0
                */
                left_buffer[0] <= left_input_0;
                left_buffer[1] <= left_input_1;
                left_buffer[2] <= left_input_2;
                left_buffer[3] <= left_input_3;
                left_buffer[4] <= left_input_4;
                left_buffer[5] <= left_input_5;
                left_buffer[6] <= left_input_6;
                left_buffer[7] <= left_input_7;                
                
                /*
                    sempre recebe o valor das diferencas, mesmo q ele nao seja sempre usado 
                    da pra ver isso melhor depois 
                */
 
                diff_buffer[0] <= diff_0;
                diff_buffer[1] <= diff_1;
                diff_buffer[2] <= diff_2;
                diff_buffer[3] <= diff_3;
                diff_buffer[4] <= diff_4;
                diff_buffer[5] <= diff_5;
                diff_buffer[6] <= diff_6;
                diff_buffer[7] <= diff_7;                   
                /*
                    sel = "0"  -> soma
                    sel = "1"  -> subtracao
                */
                
                column0[0] <= column_input_0;
                column0[1] <= column_input_1;
                column0[2] <= column_input_2;
                column0[3] <= column_input_3;
                column0[4] <= column_input_4;
                column0[5] <= column_input_5;
                column0[6] <= column_input_6;
                column0[7] <= column_input_7;
                
                column1[0] <= column1_input_0;
                column1[1] <= column1_input_1;
                column1[2] <= column1_input_2;
                column1[3] <= column1_input_3;
                column1[4] <= column1_input_4;
                column1[5] <= column1_input_5;
                column1[6] <= column1_input_6;
                column1[7] <= column1_input_7;             

                column2[0] <= column2_input_0; 
                column2[1] <= column2_input_1; 
                column2[2] <= column2_input_2;
                column2[3] <= column2_input_3;
                column2[4] <= column2_input_4;
                column2[5] <= column2_input_5;
                column2[6] <= column2_input_6;
                column2[7] <= column2_input_7;
    
                hth_0 <= hth_input_0; 
                hth_1 <= hth_input_1; 
                hth_2 <= hth_input_2;
                hth_3 <= hth_input_3;
                hth_4 <= hth_input_4;
                hth_5 <= hth_input_5;
                hth_6 <= hth_input_6;
                hth_7 <= hth_input_7;                                
            end
        end
    end 
endmodule
