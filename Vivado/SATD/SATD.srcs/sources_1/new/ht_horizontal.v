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
module ht_horizontal #(parameter WIDTH = 0, parameter NUM_INPUTS = 0) ( input  clk,
                             input  rst,
                             input  ena,
                             input  sel,
                             input  LOAD_RB, 
                             input  LOAD_LB,
                             input  LOAD_DB,
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
    
    
//Part 2: Declarations ----------------------------------------------------------
    
    reg [WIDTH:0] diff_buffer  [(NUM_INPUTS-1):0]; 
    reg [WIDTH:0] left_buffer  [(NUM_INPUTS-1):0]; 
    reg [WIDTH:0] right_buffer [(NUM_INPUTS-1):0]; 
    
    reg [(WIDTH+1):0] column0 [(NUM_INPUTS-1):0];
    reg [(WIDTH+2):0] column1 [(NUM_INPUTS-1):0];
    reg [(WIDTH+3):0] column2 [(NUM_INPUTS-1):0];

//Part 3: Statements ------------------------------------------------------------

    always @(posedge clk) begin
        if(ena) begin
            if (rst) begin
            //zerar as coisas
            end
            else begin
                if (LOAD_RB) begin
                    right_buffer[0] <= diff_0; 
                    right_buffer[1] <= diff_1;
                    right_buffer[2] <= diff_2;
                    right_buffer[3] <= diff_3;
                    right_buffer[4] <= diff_4;
                    right_buffer[5] <= diff_5;
                    right_buffer[6] <= diff_6;
                    right_buffer[7] <= diff_7; 
                end
                if (LOAD_LB) begin 
                    left_buffer[0] <= diff_0; 
                    left_buffer[1] <= diff_1; 
                    left_buffer[2] <= diff_2; 
                    left_buffer[3] <= diff_3; 
                    left_buffer[4] <= diff_4; 
                    left_buffer[5] <= diff_5; 
                    left_buffer[6] <= diff_6; 
                    left_buffer[7] <= diff_7; 
                end 
                    
            //funcionamento da transformada
                if(sel) begin
                    column0[0] <= diff_0 - diff_8;
                    column0[1] <= diff_1 - diff_9;
                    column0[2] <= diff_2 - diff_10;
                    column0[3] <= diff_3 - diff_11;
                    column0[4] <= diff_4 - diff_12;
                    column0[5] <= diff_5 - diff_13;
                    column0[6] <= diff_6 - diff_14;
                    column0[7] <= diff_7 - diff_15;
                end else begin
                    column0[0] <= diff_0 + diff_8; 
                    column0[1] <= diff_1 + diff_9; 
                    column0[2] <= diff_2 + diff_10;
                    column0[3] <= diff_3 + diff_11;
                    column0[4] <= diff_4 + diff_12;
                    column0[5] <= diff_5 + diff_13;
                    column0[6] <= diff_6 + diff_14;
                    column0[7] <= diff_7 + diff_15;
                end 
                
                column1[0] <= column0[0] + column0[4];
                column1[1] <= column0[1] + column0[5];
                column1[2] <= column0[2] + column0[6];
                column1[3] <= column0[3] + column0[7];
                column1[4] <= column0[0] - column0[4];
                column1[5] <= column0[1] - column0[5];
                column1[6] <= column0[2] - column0[6];
                column1[7] <= column0[3] - column0[7];              
          
                column2[0] <= column1[0] + column1[2]; 
                column2[1] <= column1[1] + column1[3]; 
                column2[2] <= column1[0] + column1[2];
                column2[3] <= column1[1] + column1[3];
                column2[4] <= column1[4] - column1[6];
                column2[5] <= column1[5] - column1[7];
                column2[6] <= column1[4] - column1[6];
                column2[7] <= column1[5] - column1[7];
    
                hth_0 <= column2[0] + column2[1]; 
                hth_1 <= column2[0] - column2[1]; 
                hth_2 <= column2[2] + column2[3];
                hth_3 <= column2[2] - column2[3];
                hth_4 <= column2[4] + column2[5];
                hth_5 <= column2[4] - column2[5];
                hth_6 <= column2[6] + column2[7];
                hth_7 <= column2[6] - column2[7];
            
            end
        end
     
    end 
endmodule
