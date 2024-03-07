`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2024 12:28:50 AM
// Design Name: 
// Module Name: block
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


module block #(parameter LENGTH = 11, parameter WIDTH = 8, parameter HEIGHT = 16)
   (input wire [((LENGTH+1)*WIDTH)-1:0] ORG,  
    input wire [((LENGTH+1)*WIDTH)-1:0] CUR,
    
    
    output wire signed [(LENGTH+1+3):0]hth_result_0,
    output wire signed [(LENGTH+1+3):0]hth_result_1,
    output wire signed [(LENGTH+1+3):0]hth_result_2,
    output wire signed [(LENGTH+1+3):0]hth_result_3,
    output wire signed [(LENGTH+1+3):0]hth_result_4,
    output wire signed [(LENGTH+1+3):0]hth_result_5,
    output wire signed [(LENGTH+1+3):0]hth_result_6,
    output wire signed [(LENGTH+1+3):0]hth_result_7);

    // wires
    wire signed [LENGTH+1:0] diff_result_0;
    wire signed [LENGTH+1:0] diff_result_1;
    wire signed [LENGTH+1:0] diff_result_2;
    wire signed [LENGTH+1:0] diff_result_3;
    wire signed [LENGTH+1:0] diff_result_4;
    wire signed [LENGTH+1:0] diff_result_5;
    wire signed [LENGTH+1:0] diff_result_6;
    wire signed [LENGTH+1:0] diff_result_7;
    
    differences #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) diff (
        .ORG(ORG),
        .CUR(CUR),
        .diff_0(diff_result_0),
        .diff_1(diff_result_1),
        .diff_2(diff_result_2),
        .diff_3(diff_result_3),
        .diff_4(diff_result_4),
        .diff_5(diff_result_5),
        .diff_6(diff_result_6),
        .diff_7(diff_result_7)
    );
    
    
    //+ 1 por causa das diferencas
    ht_horizontal #(
        .LENGTH(LENGTH+1),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) hth (
        .diff_0(diff_result_0),
        .diff_1(diff_result_1),
        .diff_2(diff_result_2),
        .diff_3(diff_result_3),
        .diff_4(diff_result_4),
        .diff_5(diff_result_5),
        .diff_6(diff_result_6),
        .diff_7(diff_result_7),
        .hth_0(hth_result_0),
        .hth_1(hth_result_1),
        .hth_2(hth_result_2),
        .hth_3(hth_result_3),
        .hth_4(hth_result_4),
        .hth_5(hth_result_5),
        .hth_6(hth_result_6),
        .hth_7(hth_result_7)
    );
    
endmodule
