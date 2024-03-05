`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2024 06:29:25 PM
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


module buffer #(parameter LENGTH = 8, parameter WIDTH = 8, parameter HEIGHT = 16) 
   (input clk,
    input rst,
    input ena,
    input [1:0] sel, 
    input shift,
    input wire signed  [(LENGTH+7):0]from_hth_0,
    input wire signed  [(LENGTH+7):0]from_hth_1,
    input wire signed  [(LENGTH+7):0]from_hth_2,
    input wire signed  [(LENGTH+7):0]from_hth_3,
    input wire signed  [(LENGTH+7):0]from_hth_4,
    input wire signed  [(LENGTH+7):0]from_hth_5,
    input wire signed  [(LENGTH+7):0]from_hth_6,
    input wire signed  [(LENGTH+7):0]from_hth_7,
    output wire signed [(LENGTH+7):0]to_htv_0,
    output wire signed [(LENGTH+7):0]to_htv_1,
    output wire signed [(LENGTH+7):0]to_htv_2,
    output wire signed [(LENGTH+7):0]to_htv_3,
    output wire signed [(LENGTH+7):0]to_htv_4,
    output wire signed [(LENGTH+7):0]to_htv_5,
    output wire signed [(LENGTH+7):0]to_htv_6,
    output wire signed [(LENGTH+7):0]to_htv_7,
    output wire signed [(LENGTH+7):0]to_htv_8,
    output wire signed [(LENGTH+7):0]to_htv_9,
    output wire signed [(LENGTH+7):0]to_htv_10,
    output wire signed [(LENGTH+7):0]to_htv_11,
    output wire signed [(LENGTH+7):0]to_htv_12,
    output wire signed [(LENGTH+7):0]to_htv_13,
    output wire signed [(LENGTH+7):0]to_htv_14,
    output wire signed [(LENGTH+7):0]to_htv_15);
    

    reg [(LENGTH+7):0] buffer_0[(HEIGHT-1):0][(WIDTH-1):0]; 
    reg [(LENGTH+7):0] buffer_1[(HEIGHT-1):0][(WIDTH-1):0]; 


    wire [(LENGTH+7):0] buffer_0_input[(WIDTH-1):0];
    wire [(LENGTH+7):0] buffer_1_input[(WIDTH-1):0];

    //sel = 0
    //  output recebera valores do buffer 0
    //  buffer 1 sera preenchido
    
    //sel = 1
    // output recebera valores do buffer 1 
    // buffer 0 sera preenchido
    
    
    // 00
    // 01 
    // 10 
    // 11 

    assign buffer_0_input[0] = sel[0] ? from_hth_0 : ~sel[0]? buffer_0_input[0] : buffer_0_input[0]; 
    assign buffer_0_input[1] = sel[0] ? from_hth_1 : ~sel[0]? buffer_0_input[1] : buffer_0_input[1]; 
    assign buffer_0_input[2] = sel[0] ? from_hth_2 : ~sel[0]? buffer_0_input[2] : buffer_0_input[2]; 
    assign buffer_0_input[3] = sel[0] ? from_hth_3 : ~sel[0]? buffer_0_input[3] : buffer_0_input[3]; 
    assign buffer_0_input[4] = sel[0] ? from_hth_4 : ~sel[0]? buffer_0_input[4] : buffer_0_input[4]; 
    assign buffer_0_input[5] = sel[0] ? from_hth_5 : ~sel[0]? buffer_0_input[5] : buffer_0_input[5]; 
    assign buffer_0_input[6] = sel[0] ? from_hth_6 : ~sel[0]? buffer_0_input[6] : buffer_0_input[6]; 
    assign buffer_0_input[7] = sel[0] ? from_hth_7 : ~sel[0]? buffer_0_input[7] : buffer_0_input[7]; 
    
    
    assign buffer_1_input[0] = ~sel[0] ? from_hth_0 : sel[0]? buffer_1_input[0] : buffer_1_input[0]; 
    assign buffer_1_input[1] = ~sel[0] ? from_hth_1 : sel[0]? buffer_1_input[1] : buffer_1_input[1]; 
    assign buffer_1_input[2] = ~sel[0] ? from_hth_2 : sel[0]? buffer_1_input[2] : buffer_1_input[2]; 
    assign buffer_1_input[3] = ~sel[0] ? from_hth_3 : sel[0]? buffer_1_input[3] : buffer_1_input[3]; 
    assign buffer_1_input[4] = ~sel[0] ? from_hth_4 : sel[0]? buffer_1_input[4] : buffer_1_input[4]; 
    assign buffer_1_input[5] = ~sel[0] ? from_hth_5 : sel[0]? buffer_1_input[5] : buffer_1_input[5]; 
    assign buffer_1_input[6] = ~sel[0] ? from_hth_6 : sel[0]? buffer_1_input[6] : buffer_1_input[6]; 
    assign buffer_1_input[7] = ~sel[0] ? from_hth_7 : sel[0]? buffer_1_input[7] : buffer_1_input[7]; 
    
    assign to_htv_0  = ~sel[0] ? buffer_0[0][0]  : buffer_1[0][0];  
    assign to_htv_1  = ~sel[0] ? buffer_0[1][0]  : buffer_1[1][0];  
    assign to_htv_2  = ~sel[0] ? buffer_0[2][0]  : buffer_1[2][0];  
    assign to_htv_3  = ~sel[0] ? buffer_0[3][0]  : buffer_1[3][0];  
    assign to_htv_4  = ~sel[0] ? buffer_0[4][0]  : buffer_1[4][0];  
    assign to_htv_5  = ~sel[0] ? buffer_0[5][0]  : buffer_1[5][0];  
    assign to_htv_6  = ~sel[0] ? buffer_0[6][0]  : buffer_1[6][0];  
    assign to_htv_7  = ~sel[0] ? buffer_0[7][0]  : buffer_1[7][0];  
    assign to_htv_8  = ~sel[0] ? buffer_0[8][0]  : buffer_1[8][0];  
    assign to_htv_9  = ~sel[0] ? buffer_0[9][0]  : buffer_1[9][0];  
    assign to_htv_10 = ~sel[0] ? buffer_0[10][0] : buffer_1[10][0];  
    assign to_htv_11 = ~sel[0] ? buffer_0[11][0] : buffer_1[11][0];  
    assign to_htv_12 = ~sel[0] ? buffer_0[12][0] : buffer_1[12][0];  
    assign to_htv_13 = ~sel[0] ? buffer_0[13][0] : buffer_1[13][0];  
    assign to_htv_14 = ~sel[0] ? buffer_0[14][0] : buffer_1[14][0];  
    assign to_htv_15 = ~sel[0] ? buffer_0[15][0] : buffer_1[15][0];  
    
//Part 3: Statements ------------------------------------------------------------
 always @(posedge clk) begin    
    if (sel[0]) begin
        buffer_0[15][0] <= buffer_0[14][0];
        buffer_0[15][1] <= buffer_0[14][1];
        buffer_0[15][2] <= buffer_0[14][2];
        buffer_0[15][3] <= buffer_0[14][3];
        buffer_0[15][4] <= buffer_0[14][4];
        buffer_0[15][5] <= buffer_0[14][5];
        buffer_0[15][6] <= buffer_0[14][6];
        buffer_0[15][7] <= buffer_0[14][7];
 
        buffer_0[14][0] <= buffer_0[13][0];
        buffer_0[14][1] <= buffer_0[13][1];
        buffer_0[14][2] <= buffer_0[13][2];
        buffer_0[14][3] <= buffer_0[13][3];
        buffer_0[14][4] <= buffer_0[13][4];
        buffer_0[14][5] <= buffer_0[13][5];
        buffer_0[14][6] <= buffer_0[13][6];
        buffer_0[14][7] <= buffer_0[13][7];
 
        buffer_0[13][0] <= buffer_0[12][0];
        buffer_0[13][1] <= buffer_0[12][1];
        buffer_0[13][2] <= buffer_0[12][2];
        buffer_0[13][3] <= buffer_0[12][3];
        buffer_0[13][4] <= buffer_0[12][4];
        buffer_0[13][5] <= buffer_0[12][5];
        buffer_0[13][6] <= buffer_0[12][6];
        buffer_0[13][7] <= buffer_0[12][7];
 
        buffer_0[12][0] <= buffer_0[11][0];
        buffer_0[12][1] <= buffer_0[11][1];
        buffer_0[12][2] <= buffer_0[11][2];
        buffer_0[12][3] <= buffer_0[11][3];
        buffer_0[12][4] <= buffer_0[11][4];
        buffer_0[12][5] <= buffer_0[11][5];
        buffer_0[12][6] <= buffer_0[11][6];
        buffer_0[12][7] <= buffer_0[11][7];
 
        buffer_0[11][0] <= buffer_0[10][0];
        buffer_0[11][1] <= buffer_0[10][1];
        buffer_0[11][2] <= buffer_0[10][2];
        buffer_0[11][3] <= buffer_0[10][3];
        buffer_0[11][4] <= buffer_0[10][4];
        buffer_0[11][5] <= buffer_0[10][5];
        buffer_0[11][6] <= buffer_0[10][6];
        buffer_0[11][7] <= buffer_0[10][7];
 
        buffer_0[10][0] <= buffer_0[9][0];
        buffer_0[10][1] <= buffer_0[9][1];
        buffer_0[10][2] <= buffer_0[9][2];
        buffer_0[10][3] <= buffer_0[9][3];
        buffer_0[10][4] <= buffer_0[9][4];
        buffer_0[10][5] <= buffer_0[9][5];
        buffer_0[10][6] <= buffer_0[9][6];
        buffer_0[10][7] <= buffer_0[9][7];
 
        buffer_0[9][0] <= buffer_0[8][0];
        buffer_0[9][1] <= buffer_0[8][1];
        buffer_0[9][2] <= buffer_0[8][2];
        buffer_0[9][3] <= buffer_0[8][3];
        buffer_0[9][4] <= buffer_0[8][4];
        buffer_0[9][5] <= buffer_0[8][5];
        buffer_0[9][6] <= buffer_0[8][6];
        buffer_0[9][7] <= buffer_0[8][7];
 
        buffer_0[8][0] <= buffer_0[7][0];
        buffer_0[8][1] <= buffer_0[7][1];
        buffer_0[8][2] <= buffer_0[7][2];
        buffer_0[8][3] <= buffer_0[7][3];
        buffer_0[8][4] <= buffer_0[7][4];
        buffer_0[8][5] <= buffer_0[7][5];
        buffer_0[8][6] <= buffer_0[7][6];
        buffer_0[8][7] <= buffer_0[7][7];
 
        buffer_0[7][0] <= buffer_0[6][0];
        buffer_0[7][1] <= buffer_0[6][1];
        buffer_0[7][2] <= buffer_0[6][2];
        buffer_0[7][3] <= buffer_0[6][3];
        buffer_0[7][4] <= buffer_0[6][4];
        buffer_0[7][5] <= buffer_0[6][5];
        buffer_0[7][6] <= buffer_0[6][6];
        buffer_0[7][7] <= buffer_0[6][7];
 
        buffer_0[6][0] <= buffer_0[5][0];
        buffer_0[6][1] <= buffer_0[5][1];
        buffer_0[6][2] <= buffer_0[5][2];
        buffer_0[6][3] <= buffer_0[5][3];
        buffer_0[6][4] <= buffer_0[5][4];
        buffer_0[6][5] <= buffer_0[5][5];
        buffer_0[6][6] <= buffer_0[5][6];
        buffer_0[6][7] <= buffer_0[5][7];
 
        buffer_0[5][0] <= buffer_0[4][0];
        buffer_0[5][1] <= buffer_0[4][1];
        buffer_0[5][2] <= buffer_0[4][2];
        buffer_0[5][3] <= buffer_0[4][3];
        buffer_0[5][4] <= buffer_0[4][4];
        buffer_0[5][5] <= buffer_0[4][5];
        buffer_0[5][6] <= buffer_0[4][6];
        buffer_0[5][7] <= buffer_0[4][7];
 
        buffer_0[4][0] <= buffer_0[3][0];
        buffer_0[4][1] <= buffer_0[3][1];
        buffer_0[4][2] <= buffer_0[3][2];
        buffer_0[4][3] <= buffer_0[3][3];
        buffer_0[4][4] <= buffer_0[3][4];
        buffer_0[4][5] <= buffer_0[3][5];
        buffer_0[4][6] <= buffer_0[3][6];
        buffer_0[4][7] <= buffer_0[3][7];
 
        buffer_0[3][0] <= buffer_0[2][0];
        buffer_0[3][1] <= buffer_0[2][1];
        buffer_0[3][2] <= buffer_0[2][2];
        buffer_0[3][3] <= buffer_0[2][3];
        buffer_0[3][4] <= buffer_0[2][4];
        buffer_0[3][5] <= buffer_0[2][5];
        buffer_0[3][6] <= buffer_0[2][6];
        buffer_0[3][7] <= buffer_0[2][7];
 
        buffer_0[2][0] <= buffer_0[1][0];
        buffer_0[2][1] <= buffer_0[1][1];
        buffer_0[2][2] <= buffer_0[1][2];
        buffer_0[2][3] <= buffer_0[1][3];
        buffer_0[2][4] <= buffer_0[1][4];
        buffer_0[2][5] <= buffer_0[1][5];
        buffer_0[2][6] <= buffer_0[1][6];
        buffer_0[2][7] <= buffer_0[1][7];
   
        buffer_0[1][0] <= buffer_0[0][0];
        buffer_0[1][1] <= buffer_0[0][1];
        buffer_0[1][2] <= buffer_0[0][2];
        buffer_0[1][3] <= buffer_0[0][3];
        buffer_0[1][4] <= buffer_0[0][4];
        buffer_0[1][5] <= buffer_0[0][5];
        buffer_0[1][6] <= buffer_0[0][6];
        buffer_0[1][7] <= buffer_0[0][7];
          
        buffer_0[0][0] <= buffer_0_input[0]; 
        buffer_0[0][1] <= buffer_0_input[1]; 
        buffer_0[0][2] <= buffer_0_input[2]; 
        buffer_0[0][3] <= buffer_0_input[3]; 
        buffer_0[0][4] <= buffer_0_input[4]; 
        buffer_0[0][5] <= buffer_0_input[5]; 
        buffer_0[0][6] <= buffer_0_input[6]; 
        buffer_0[0][7] <= buffer_0_input[7];        
        
        if(sel[1]) begin
            buffer_1[0][6]  <=  buffer_1[0][7];  
            buffer_1[1][6]  <=  buffer_1[1][7];  
            buffer_1[2][6]  <=  buffer_1[2][7];  
            buffer_1[3][6]  <=  buffer_1[3][7];  
            buffer_1[4][6]  <=  buffer_1[4][7];  
            buffer_1[5][6]  <=  buffer_1[5][7];  
            buffer_1[6][6]  <=  buffer_1[6][7];  
            buffer_1[7][6]  <=  buffer_1[7][7];  
            buffer_1[8][6]  <=  buffer_1[8][7];  
            buffer_1[9][6]  <=  buffer_1[9][7];  
            buffer_1[10][6] <=  buffer_1[10][7];  
            buffer_1[11][6] <=  buffer_1[11][7];  
            buffer_1[12][6] <=  buffer_1[12][7];  
            buffer_1[13][6] <=  buffer_1[13][7];  
            buffer_1[14][6] <=  buffer_1[14][7];  
            buffer_1[15][6] <=  buffer_1[15][7];  
    
            buffer_1[0][5]  <=  buffer_1[0][6];  
            buffer_1[1][5]  <=  buffer_1[1][6];  
            buffer_1[2][5]  <=  buffer_1[2][6];  
            buffer_1[3][5]  <=  buffer_1[3][6];  
            buffer_1[4][5]  <=  buffer_1[4][6];  
            buffer_1[5][5]  <=  buffer_1[5][6];  
            buffer_1[6][5]  <=  buffer_1[6][6];  
            buffer_1[7][5]  <=  buffer_1[7][6];  
            buffer_1[8][5]  <=  buffer_1[8][6];  
            buffer_1[9][5]  <=  buffer_1[9][6];  
            buffer_1[10][5] <=  buffer_1[10][6];  
            buffer_1[11][5] <=  buffer_1[11][6];  
            buffer_1[12][5] <=  buffer_1[12][6];  
            buffer_1[13][5] <=  buffer_1[13][6];  
            buffer_1[14][5] <=  buffer_1[14][6];  
            buffer_1[15][5] <=  buffer_1[15][6];  
    
            buffer_1[0][4]  <=  buffer_1[0][5];  
            buffer_1[1][4]  <=  buffer_1[1][5];  
            buffer_1[2][4]  <=  buffer_1[2][5];  
            buffer_1[3][4]  <=  buffer_1[3][5];  
            buffer_1[4][4]  <=  buffer_1[4][5];  
            buffer_1[5][4]  <=  buffer_1[5][5];  
            buffer_1[6][4]  <=  buffer_1[6][5];  
            buffer_1[7][4]  <=  buffer_1[7][5];  
            buffer_1[8][4]  <=  buffer_1[8][5];  
            buffer_1[9][4]  <=  buffer_1[9][5];  
            buffer_1[10][4] <=  buffer_1[10][5];  
            buffer_1[11][4] <=  buffer_1[11][5];  
            buffer_1[12][4] <=  buffer_1[12][5];  
            buffer_1[13][4] <=  buffer_1[13][5];  
            buffer_1[14][4] <=  buffer_1[14][5];  
            buffer_1[15][4] <=  buffer_1[15][5];  

            buffer_1[0][3]  <=  buffer_1[0][4];  
            buffer_1[1][3]  <=  buffer_1[1][4];  
            buffer_1[2][3]  <=  buffer_1[2][4];  
            buffer_1[3][3]  <=  buffer_1[3][4];  
            buffer_1[4][3]  <=  buffer_1[4][4];  
            buffer_1[5][3]  <=  buffer_1[5][4];  
            buffer_1[6][3]  <=  buffer_1[6][4];  
            buffer_1[7][3]  <=  buffer_1[7][4];  
            buffer_1[8][3]  <=  buffer_1[8][4];  
            buffer_1[9][3]  <=  buffer_1[9][4];  
            buffer_1[10][3] <=  buffer_1[10][4];  
            buffer_1[11][3] <=  buffer_1[11][4];  
            buffer_1[12][3] <=  buffer_1[12][4];  
            buffer_1[13][3] <=  buffer_1[13][4];  
            buffer_1[14][3] <=  buffer_1[14][4];  
            buffer_1[15][3] <=  buffer_1[15][4];  
    
            buffer_1[0][2]  <=  buffer_1[0][3];  
            buffer_1[1][2]  <=  buffer_1[1][3];  
            buffer_1[2][2]  <=  buffer_1[2][3];  
            buffer_1[3][2]  <=  buffer_1[3][3];  
            buffer_1[4][2]  <=  buffer_1[4][3];  
            buffer_1[5][2]  <=  buffer_1[5][3];  
            buffer_1[6][2]  <=  buffer_1[6][3];  
            buffer_1[7][2]  <=  buffer_1[7][3];  
            buffer_1[8][2]  <=  buffer_1[8][3];  
            buffer_1[9][2]  <=  buffer_1[9][3];  
            buffer_1[10][2] <=  buffer_1[10][3];  
            buffer_1[11][2] <=  buffer_1[11][3];  
            buffer_1[12][2] <=  buffer_1[12][3];  
            buffer_1[13][2] <=  buffer_1[13][3];  
            buffer_1[14][2] <=  buffer_1[14][3];  
            buffer_1[15][2] <=  buffer_1[15][3];  
    
            buffer_1[0][1]  <=  buffer_1[0][2];  
            buffer_1[1][1]  <=  buffer_1[1][2];  
            buffer_1[2][1]  <=  buffer_1[2][2];  
            buffer_1[3][1]  <=  buffer_1[3][2];  
            buffer_1[4][1]  <=  buffer_1[4][2];  
            buffer_1[5][1]  <=  buffer_1[5][2];  
            buffer_1[6][1]  <=  buffer_1[6][2];  
            buffer_1[7][1]  <=  buffer_1[7][2];  
            buffer_1[8][1]  <=  buffer_1[8][2];  
            buffer_1[9][1]  <=  buffer_1[9][2];  
            buffer_1[10][1] <=  buffer_1[10][2];  
            buffer_1[11][1] <=  buffer_1[11][2];  
            buffer_1[12][1] <=  buffer_1[12][2];  
            buffer_1[13][1] <=  buffer_1[13][2];  
            buffer_1[14][1] <=  buffer_1[14][2];  
            buffer_1[15][1] <=  buffer_1[15][2];  
    
            buffer_1[0][0]  <=  buffer_1[0][1];  
            buffer_1[1][0]  <=  buffer_1[1][1];  
            buffer_1[2][0]  <=  buffer_1[2][1];  
            buffer_1[3][0]  <=  buffer_1[3][1];  
            buffer_1[4][0]  <=  buffer_1[4][1];  
            buffer_1[5][0]  <=  buffer_1[5][1];  
            buffer_1[6][0]  <=  buffer_1[6][1];  
            buffer_1[7][0]  <=  buffer_1[7][1];  
            buffer_1[8][0]  <=  buffer_1[8][1];  
            buffer_1[9][0]  <=  buffer_1[9][1];  
            buffer_1[10][0] <=  buffer_1[10][1];  
            buffer_1[11][0] <=  buffer_1[11][1];  
            buffer_1[12][0] <=  buffer_1[12][1];  
            buffer_1[13][0] <=  buffer_1[13][1];  
            buffer_1[14][0] <=  buffer_1[14][1];  
            buffer_1[15][0] <=  buffer_1[15][1];  
        end
           
    end 
 
    if(~sel[0]) begin
        buffer_1[15][0] <= buffer_1[14][0];
        buffer_1[15][1] <= buffer_1[14][1];
        buffer_1[15][2] <= buffer_1[14][2];
        buffer_1[15][3] <= buffer_1[14][3];
        buffer_1[15][4] <= buffer_1[14][4];
        buffer_1[15][5] <= buffer_1[14][5];
        buffer_1[15][6] <= buffer_1[14][6];
        buffer_1[15][7] <= buffer_1[14][7];
 
        buffer_1[14][0] <= buffer_1[13][0];
        buffer_1[14][1] <= buffer_1[13][1];
        buffer_1[14][2] <= buffer_1[13][2];
        buffer_1[14][3] <= buffer_1[13][3];
        buffer_1[14][4] <= buffer_1[13][4];
        buffer_1[14][5] <= buffer_1[13][5];
        buffer_1[14][6] <= buffer_1[13][6];
        buffer_1[14][7] <= buffer_1[13][7];
 
        buffer_1[13][0] <= buffer_1[12][0];
        buffer_1[13][1] <= buffer_1[12][1];
        buffer_1[13][2] <= buffer_1[12][2];
        buffer_1[13][3] <= buffer_1[12][3];
        buffer_1[13][4] <= buffer_1[12][4];
        buffer_1[13][5] <= buffer_1[12][5];
        buffer_1[13][6] <= buffer_1[12][6];
        buffer_1[13][7] <= buffer_1[12][7];
 
        buffer_1[12][0] <= buffer_1[11][0];
        buffer_1[12][1] <= buffer_1[11][1];
        buffer_1[12][2] <= buffer_1[11][2];
        buffer_1[12][3] <= buffer_1[11][3];
        buffer_1[12][4] <= buffer_1[11][4];
        buffer_1[12][5] <= buffer_1[11][5];
        buffer_1[12][6] <= buffer_1[11][6];
        buffer_1[12][7] <= buffer_1[11][7];
 
        buffer_1[11][0] <= buffer_1[10][0];
        buffer_1[11][1] <= buffer_1[10][1];
        buffer_1[11][2] <= buffer_1[10][2];
        buffer_1[11][3] <= buffer_1[10][3];
        buffer_1[11][4] <= buffer_1[10][4];
        buffer_1[11][5] <= buffer_1[10][5];
        buffer_1[11][6] <= buffer_1[10][6];
        buffer_1[11][7] <= buffer_1[10][7];
 
        buffer_1[10][0] <= buffer_1[9][0];
        buffer_1[10][1] <= buffer_1[9][1];
        buffer_1[10][2] <= buffer_1[9][2];
        buffer_1[10][3] <= buffer_1[9][3];
        buffer_1[10][4] <= buffer_1[9][4];
        buffer_1[10][5] <= buffer_1[9][5];
        buffer_1[10][6] <= buffer_1[9][6];
        buffer_1[10][7] <= buffer_1[9][7];
 
        buffer_1[9][0] <= buffer_1[8][0];
        buffer_1[9][1] <= buffer_1[8][1];
        buffer_1[9][2] <= buffer_1[8][2];
        buffer_1[9][3] <= buffer_1[8][3];
        buffer_1[9][4] <= buffer_1[8][4];
        buffer_1[9][5] <= buffer_1[8][5];
        buffer_1[9][6] <= buffer_1[8][6];
        buffer_1[9][7] <= buffer_1[8][7];
 
        buffer_1[8][0] <= buffer_1[7][0];
        buffer_1[8][1] <= buffer_1[7][1];
        buffer_1[8][2] <= buffer_1[7][2];
        buffer_1[8][3] <= buffer_1[7][3];
        buffer_1[8][4] <= buffer_1[7][4];
        buffer_1[8][5] <= buffer_1[7][5];
        buffer_1[8][6] <= buffer_1[7][6];
        buffer_1[8][7] <= buffer_1[7][7];
 
        buffer_1[7][0] <= buffer_1[6][0];
        buffer_1[7][1] <= buffer_1[6][1];
        buffer_1[7][2] <= buffer_1[6][2];
        buffer_1[7][3] <= buffer_1[6][3];
        buffer_1[7][4] <= buffer_1[6][4];
        buffer_1[7][5] <= buffer_1[6][5];
        buffer_1[7][6] <= buffer_1[6][6];
        buffer_1[7][7] <= buffer_1[6][7];
 
        buffer_1[6][0] <= buffer_1[5][0];
        buffer_1[6][1] <= buffer_1[5][1];
        buffer_1[6][2] <= buffer_1[5][2];
        buffer_1[6][3] <= buffer_1[5][3];
        buffer_1[6][4] <= buffer_1[5][4];
        buffer_1[6][5] <= buffer_1[5][5];
        buffer_1[6][6] <= buffer_1[5][6];
        buffer_1[6][7] <= buffer_1[5][7];
 
        buffer_1[5][0] <= buffer_1[4][0];
        buffer_1[5][1] <= buffer_1[4][1];
        buffer_1[5][2] <= buffer_1[4][2];
        buffer_1[5][3] <= buffer_1[4][3];
        buffer_1[5][4] <= buffer_1[4][4];
        buffer_1[5][5] <= buffer_1[4][5];
        buffer_1[5][6] <= buffer_1[4][6];
        buffer_1[5][7] <= buffer_1[4][7];
 
        buffer_1[4][0] <= buffer_1[3][0];
        buffer_1[4][1] <= buffer_1[3][1];
        buffer_1[4][2] <= buffer_1[3][2];
        buffer_1[4][3] <= buffer_1[3][3];
        buffer_1[4][4] <= buffer_1[3][4];
        buffer_1[4][5] <= buffer_1[3][5];
        buffer_1[4][6] <= buffer_1[3][6];
        buffer_1[4][7] <= buffer_1[3][7];
 
        buffer_1[3][0] <= buffer_1[2][0];
        buffer_1[3][1] <= buffer_1[2][1];
        buffer_1[3][2] <= buffer_1[2][2];
        buffer_1[3][3] <= buffer_1[2][3];
        buffer_1[3][4] <= buffer_1[2][4];
        buffer_1[3][5] <= buffer_1[2][5];
        buffer_1[3][6] <= buffer_1[2][6];
        buffer_1[3][7] <= buffer_1[2][7];
 
        buffer_1[2][0] <= buffer_1[1][0];
        buffer_1[2][1] <= buffer_1[1][1];
        buffer_1[2][2] <= buffer_1[1][2];
        buffer_1[2][3] <= buffer_1[1][3];
        buffer_1[2][4] <= buffer_1[1][4];
        buffer_1[2][5] <= buffer_1[1][5];
        buffer_1[2][6] <= buffer_1[1][6];
        buffer_1[2][7] <= buffer_1[1][7];
   
        buffer_1[1][0] <= buffer_1[0][0];
        buffer_1[1][1] <= buffer_1[0][1];
        buffer_1[1][2] <= buffer_1[0][2];
        buffer_1[1][3] <= buffer_1[0][3];
        buffer_1[1][4] <= buffer_1[0][4];
        buffer_1[1][5] <= buffer_1[0][5];
        buffer_1[1][6] <= buffer_1[0][6];
        buffer_1[1][7] <= buffer_1[0][7];   

        buffer_1[0][0] <= buffer_1_input[0]; 
        buffer_1[0][1] <= buffer_1_input[1]; 
        buffer_1[0][2] <= buffer_1_input[2]; 
        buffer_1[0][3] <= buffer_1_input[3]; 
        buffer_1[0][4] <= buffer_1_input[4]; 
        buffer_1[0][5] <= buffer_1_input[5]; 
        buffer_1[0][6] <= buffer_1_input[6]; 
        buffer_1[0][7] <= buffer_1_input[7]; 
        
        if(sel[1]) begin

            buffer_0[0][6]  <=  buffer_0[0][7];  
            buffer_0[1][6]  <=  buffer_0[1][7];  
            buffer_0[2][6]  <=  buffer_0[2][7];  
            buffer_0[3][6]  <=  buffer_0[3][7];  
            buffer_0[4][6]  <=  buffer_0[4][7];  
            buffer_0[5][6]  <=  buffer_0[5][7];  
            buffer_0[6][6]  <=  buffer_0[6][7];  
            buffer_0[7][6]  <=  buffer_0[7][7];  
            buffer_0[8][6]  <=  buffer_0[8][7];  
            buffer_0[9][6]  <=  buffer_0[9][7];  
            buffer_0[10][6] <=  buffer_0[10][7];  
            buffer_0[11][6] <=  buffer_0[11][7];  
            buffer_0[12][6] <=  buffer_0[12][7];  
            buffer_0[13][6] <=  buffer_0[13][7];  
            buffer_0[14][6] <=  buffer_0[14][7];  
            buffer_0[15][6] <=  buffer_0[15][7];  
    
            buffer_0[0][5]  <=  buffer_0[0][6];  
            buffer_0[1][5]  <=  buffer_0[1][6];  
            buffer_0[2][5]  <=  buffer_0[2][6];  
            buffer_0[3][5]  <=  buffer_0[3][6];  
            buffer_0[4][5]  <=  buffer_0[4][6];  
            buffer_0[5][5]  <=  buffer_0[5][6];  
            buffer_0[6][5]  <=  buffer_0[6][6];  
            buffer_0[7][5]  <=  buffer_0[7][6];  
            buffer_0[8][5]  <=  buffer_0[8][6];  
            buffer_0[9][5]  <=  buffer_0[9][6];  
            buffer_0[10][5] <=  buffer_0[10][6];  
            buffer_0[11][5] <=  buffer_0[11][6];  
            buffer_0[12][5] <=  buffer_0[12][6];  
            buffer_0[13][5] <=  buffer_0[13][6];  
            buffer_0[14][5] <=  buffer_0[14][6];  
            buffer_0[15][5] <=  buffer_0[15][6];  
    
            buffer_0[0][4]  <=  buffer_0[0][5];  
            buffer_0[1][4]  <=  buffer_0[1][5];  
            buffer_0[2][4]  <=  buffer_0[2][5];  
            buffer_0[3][4]  <=  buffer_0[3][5];  
            buffer_0[4][4]  <=  buffer_0[4][5];  
            buffer_0[5][4]  <=  buffer_0[5][5];  
            buffer_0[6][4]  <=  buffer_0[6][5];  
            buffer_0[7][4]  <=  buffer_0[7][5];  
            buffer_0[8][4]  <=  buffer_0[8][5];  
            buffer_0[9][4]  <=  buffer_0[9][5];  
            buffer_0[10][4] <=  buffer_0[10][5];  
            buffer_0[11][4] <=  buffer_0[11][5];  
            buffer_0[12][4] <=  buffer_0[12][5];  
            buffer_0[13][4] <=  buffer_0[13][5];  
            buffer_0[14][4] <=  buffer_0[14][5];  
            buffer_0[15][4] <=  buffer_0[15][5];  
    
            buffer_0[0][3]  <=  buffer_0[0][4];  
            buffer_0[1][3]  <=  buffer_0[1][4];  
            buffer_0[2][3]  <=  buffer_0[2][4];  
            buffer_0[3][3]  <=  buffer_0[3][4];  
            buffer_0[4][3]  <=  buffer_0[4][4];  
            buffer_0[5][3]  <=  buffer_0[5][4];  
            buffer_0[6][3]  <=  buffer_0[6][4];  
            buffer_0[7][3]  <=  buffer_0[7][4];  
            buffer_0[8][3]  <=  buffer_0[8][4];  
            buffer_0[9][3]  <=  buffer_0[9][4];  
            buffer_0[10][3] <=  buffer_0[10][4];  
            buffer_0[11][3] <=  buffer_0[11][4];  
            buffer_0[12][3] <=  buffer_0[12][4];  
            buffer_0[13][3] <=  buffer_0[13][4];  
            buffer_0[14][3] <=  buffer_0[14][4];  
            buffer_0[15][3] <=  buffer_0[15][4];  
    
            buffer_0[0][2]  <=  buffer_0[0][3];  
            buffer_0[1][2]  <=  buffer_0[1][3];  
            buffer_0[2][2]  <=  buffer_0[2][3];  
            buffer_0[3][2]  <=  buffer_0[3][3];  
            buffer_0[4][2]  <=  buffer_0[4][3];  
            buffer_0[5][2]  <=  buffer_0[5][3];  
            buffer_0[6][2]  <=  buffer_0[6][3];  
            buffer_0[7][2]  <=  buffer_0[7][3];  
            buffer_0[8][2]  <=  buffer_0[8][3];  
            buffer_0[9][2]  <=  buffer_0[9][3];  
            buffer_0[10][2] <=  buffer_0[10][3];  
            buffer_0[11][2] <=  buffer_0[11][3];  
            buffer_0[12][2] <=  buffer_0[12][3];  
            buffer_0[13][2] <=  buffer_0[13][3];  
            buffer_0[14][2] <=  buffer_0[14][3];  
            buffer_0[15][2] <=  buffer_0[15][3];  
    
            buffer_0[0][1]  <=  buffer_0[0][2];  
            buffer_0[1][1]  <=  buffer_0[1][2];  
            buffer_0[2][1]  <=  buffer_0[2][2];  
            buffer_0[3][1]  <=  buffer_0[3][2];  
            buffer_0[4][1]  <=  buffer_0[4][2];  
            buffer_0[5][1]  <=  buffer_0[5][2];  
            buffer_0[6][1]  <=  buffer_0[6][2];  
            buffer_0[7][1]  <=  buffer_0[7][2];  
            buffer_0[8][1]  <=  buffer_0[8][2];  
            buffer_0[9][1]  <=  buffer_0[9][2];  
            buffer_0[10][1] <=  buffer_0[10][2];  
            buffer_0[11][1] <=  buffer_0[11][2];  
            buffer_0[12][1] <=  buffer_0[12][2];  
            buffer_0[13][1] <=  buffer_0[13][2];  
            buffer_0[14][1] <=  buffer_0[14][2];  
            buffer_0[15][1] <=  buffer_0[15][2];  
    
            buffer_0[0][0]  <=  buffer_0[0][1];  
            buffer_0[1][0]  <=  buffer_0[1][1];  
            buffer_0[2][0]  <=  buffer_0[2][1];  
            buffer_0[3][0]  <=  buffer_0[3][1];  
            buffer_0[4][0]  <=  buffer_0[4][1];  
            buffer_0[5][0]  <=  buffer_0[5][1];  
            buffer_0[6][0]  <=  buffer_0[6][1];  
            buffer_0[7][0]  <=  buffer_0[7][1];  
            buffer_0[8][0]  <=  buffer_0[8][1];  
            buffer_0[9][0]  <=  buffer_0[9][1];  
            buffer_0[10][0] <=  buffer_0[10][1];  
            buffer_0[11][0] <=  buffer_0[11][1];  
            buffer_0[12][0] <=  buffer_0[12][1];  
            buffer_0[13][0] <=  buffer_0[13][1];  
            buffer_0[14][0] <=  buffer_0[14][1];  
            buffer_0[15][0] <=  buffer_0[15][1];  
        end
    end
end
endmodule
