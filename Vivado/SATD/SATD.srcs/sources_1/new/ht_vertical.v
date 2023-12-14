`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 10:19:08
// Design Name: 
// Module Name: ht_vertical
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

module ht_vertical #(parameter WIDTH = 0, parameter SAMPLES = 0) ( input  clk,
                             input  rst,
                             input  ena,                             
                             input wire signed [(WIDTH+4):0] input_buffer_0,
                             input wire signed [(WIDTH+4):0] input_buffer_1,
                             input wire signed [(WIDTH+4):0] input_buffer_2,
                             input wire signed [(WIDTH+4):0] input_buffer_3,
                             input wire signed [(WIDTH+4):0] input_buffer_4,
                             input wire signed [(WIDTH+4):0] input_buffer_5,
                             input wire signed [(WIDTH+4):0] input_buffer_6,
                             input wire signed [(WIDTH+4):0] input_buffer_7,
                             output reg signed [(WIDTH+7):0]htv_0,
                             output reg signed [(WIDTH+7):0]htv_1,
                             output reg signed [(WIDTH+7):0]htv_2,
                             output reg signed [(WIDTH+7):0]htv_3,
                             output reg signed [(WIDTH+7):0]htv_4,
                             output reg signed [(WIDTH+7):0]htv_5,
                             output reg signed [(WIDTH+7):0]htv_6,
                             output reg signed [(WIDTH+7):0]htv_7);
//------------------------------------------------------------------------------------------
                                 /*
                                     são 8 amostras na butterfly 
                                     NUM_INPUTS = SAMPLES = amostras 
                                 
                                 */
 //Part 2: Declarations ----------------------------------------------------------
     
    reg [(WIDTH+5):0] column1 [(SAMPLES-1):0];
    reg [(WIDTH+6):0] column2 [(SAMPLES-1):0];

     
     
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [(WIDTH+5):0] column1_input_0 = input_buffer_0 + input_buffer_4;
    wire signed [(WIDTH+5):0] column1_input_1 = input_buffer_1 + input_buffer_5;
    wire signed [(WIDTH+5):0] column1_input_2 = input_buffer_2 + input_buffer_6;
    wire signed [(WIDTH+5):0] column1_input_3 = input_buffer_3 + input_buffer_7;
    wire signed [(WIDTH+5):0] column1_input_4 = input_buffer_0 - input_buffer_4; 
    wire signed [(WIDTH+5):0] column1_input_5 = input_buffer_1 - input_buffer_5; 
    wire signed [(WIDTH+5):0] column1_input_6 = input_buffer_2 - input_buffer_6;
    wire signed [(WIDTH+5):0] column1_input_7 = input_buffer_3 - input_buffer_7;
             
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [(WIDTH+6):0] column2_input_0 = column1[0] + column1[2]; 
    wire signed [(WIDTH+6):0] column2_input_1 = column1[1] + column1[3]; 
    wire signed [(WIDTH+6):0] column2_input_2 = column1[0] - column1[2];
    wire signed [(WIDTH+6):0] column2_input_3 = column1[1] - column1[3];
    wire signed [(WIDTH+6):0] column2_input_4 = column1[4] + column1[6];
    wire signed [(WIDTH+6):0] column2_input_5 = column1[5] + column1[7];
    wire signed [(WIDTH+6):0] column2_input_6 = column1[4] - column1[6];
    wire signed [(WIDTH+6):0] column2_input_7 = column1[5] - column1[7];

    //cada linha pra UMA AMOSTRA DE n bits                            
    wire signed [(WIDTH+7):0] htv_input_0 = column2[0] + column2[1]; 
    wire signed [(WIDTH+7):0] htv_input_1 = column2[0] - column2[1]; 
    wire signed [(WIDTH+7):0] htv_input_2 = column2[2] + column2[3];
    wire signed [(WIDTH+7):0] htv_input_3 = column2[2] - column2[3];
    wire signed [(WIDTH+7):0] htv_input_4 = column2[4] + column2[5];
    wire signed [(WIDTH+7):0] htv_input_5 = column2[4] - column2[5];
    wire signed [(WIDTH+7):0] htv_input_6 = column2[6] + column2[7];
    wire signed [(WIDTH+7):0] htv_input_7 = column2[6] - column2[7];                    
 
 
 
 
//Part 3: Statements ------------------------------------------------------------

    always @(posedge clk) begin
        if(ena) begin
            if (rst) begin
                /*
                achar um jeito de fazer isso direito
                intankavel ter que fazer na mao assim
                */
                
                //column0 <= SAMPLES*(WIDTH+1)'b0;
                //column1 <= SAMPLES*(WIDTH+2)'b0;
                //column2 <= SAMPLES*(WIDTH+3)'b0;                
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

                htv_0 <= {(WIDTH+5){1'b0}}; 
                htv_1 <= {(WIDTH+5){1'b0}}; 
                htv_2 <= {(WIDTH+5){1'b0}}; 
                htv_3 <= {(WIDTH+5){1'b0}}; 
                htv_4 <= {(WIDTH+5){1'b0}}; 
                htv_5 <= {(WIDTH+5){1'b0}}; 
                htv_6 <= {(WIDTH+5){1'b0}}; 
                htv_7 <= {(WIDTH+5){1'b0}}; 
            end
            else begin
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
    
                htv_0 <= htv_input_0; 
                htv_1 <= htv_input_1; 
                htv_2 <= htv_input_2;
                htv_3 <= htv_input_3;
                htv_4 <= htv_input_4;
                htv_5 <= htv_input_5;
                htv_6 <= htv_input_6;
                htv_7 <= htv_input_7;                           
            end
        end
    end 
endmodule

