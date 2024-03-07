`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 01:43:01 AM
// Design Name: 
// Module Name: block_htv_absum_aprox_3
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

module block_htv_absum_aprox_3 #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) (
    input sel,
    input wire signed [LENGTH:0]hth_0,
    input wire signed [LENGTH:0]hth_1,
    input wire signed [LENGTH:0]hth_2,
    input wire signed [LENGTH:0]hth_3,
    input wire signed [LENGTH:0]hth_4,
    input wire signed [LENGTH:0]hth_5,
    input wire signed [LENGTH:0]hth_6,
    input wire signed [LENGTH:0]hth_7,
    input wire signed [LENGTH:0]hth_8,
    input wire signed [LENGTH:0]hth_9,
    input wire signed [LENGTH:0]hth_10,
    input wire signed [LENGTH:0]hth_11,
    input wire signed [LENGTH:0]hth_12,
    input wire signed [LENGTH:0]hth_13,
    input wire signed [LENGTH:0]hth_14,
    input wire signed [LENGTH:0]hth_15,
    output wire [(LENGTH+4):0] sum_partial
    );
    
    
    wire signed [(LENGTH+1):0]htv_result_0;
    wire signed [(LENGTH+1):0]htv_result_1;
    wire signed [(LENGTH+1):0]htv_result_2;
    wire signed [(LENGTH+1):0]htv_result_3;
    wire signed [(LENGTH+1):0]htv_result_4;
    wire signed [(LENGTH+1):0]htv_result_5;
    wire signed [(LENGTH+1):0]htv_result_6;
    wire signed [(LENGTH+1):0]htv_result_7;
    

    htv_vertical_aprox_3 #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) htv (
        .sel(sel),
        .hth_0(hth_0),
        .hth_1(hth_1),
        .hth_2(hth_2),
        .hth_3(hth_3),
        .hth_4(hth_4),
        .hth_5(hth_5),
        .hth_6(hth_6),
        .hth_7(hth_7),
        .hth_8(hth_8),
        .hth_9(hth_9),
        .hth_10(hth_10),
        .hth_11(hth_11),
        .hth_12(hth_12),
        .hth_13(hth_13),
        .hth_14(hth_14),
        .hth_15(hth_15),
        .htv_0(htv_result_0),
        .htv_1(htv_result_1),
        .htv_2(htv_result_2),
        .htv_3(htv_result_3),
        .htv_4(htv_result_4),
        .htv_5(htv_result_5),
        .htv_6(htv_result_6),
        .htv_7(htv_result_7)
    );
    
   
    sum #(
         .LENGTH(LENGTH+1),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) sum_inst (
         .diff_0(htv_result_0),
         .diff_1(htv_result_1),
         .diff_2(htv_result_2),
         .diff_3(htv_result_3),
         .diff_4(htv_result_4),
         .diff_5(htv_result_5),
         .diff_6(htv_result_6),
         .diff_7(htv_result_7),
         .abs_sum(sum_partial)
     );


endmodule