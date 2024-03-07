`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 05:08:53 PM
// Design Name: 
// Module Name: horizontal
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


//8 de largura, 16 de altura
//8 bits
//lenght na declaração deve ter +1, pq diff aumenta um bit

module ht_horizontal #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input wire signed [LENGTH:0]diff_0,
    input wire signed [LENGTH:0]diff_1,
    input wire signed [LENGTH:0]diff_2,
    input wire signed [LENGTH:0]diff_3,
    input wire signed [LENGTH:0]diff_4,
    input wire signed [LENGTH:0]diff_5,
    input wire signed [LENGTH:0]diff_6,
    input wire signed [LENGTH:0]diff_7,
    output wire signed [(LENGTH+3):0]hth_0,
    output wire signed [(LENGTH+3):0]hth_1,
    output wire signed [(LENGTH+3):0]hth_2,
    output wire signed [(LENGTH+3):0]hth_3,
    output wire signed [(LENGTH+3):0]hth_4,
    output wire signed [(LENGTH+3):0]hth_5,
    output wire signed [(LENGTH+3):0]hth_6,
    output wire signed [(LENGTH+3):0]hth_7);

    localparam n = 3;
    
    assign hth_0 = (({{n{diff_0[LENGTH]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[LENGTH]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[LENGTH]}},diff_1} + {{n{diff_5[LENGTH]}},diff_5}) + ({{n{diff_3[LENGTH]}},diff_3} + {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_1 = (({{n{diff_0[LENGTH]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[LENGTH]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[LENGTH]}},diff_1} + {{n{diff_5[LENGTH]}},diff_5}) + ({{n{diff_3[LENGTH]}},diff_3} + {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_2 = (({{n{diff_0[LENGTH]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[LENGTH]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[LENGTH]}},diff_1} + {{n{diff_5[LENGTH]}},diff_5}) - ({{n{diff_3[LENGTH]}},diff_3} + {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_3 = (({{n{diff_0[LENGTH]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[LENGTH]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[LENGTH]}},diff_1} + {{n{diff_5[LENGTH]}},diff_5}) - ({{n{diff_3[LENGTH]}},diff_3} + {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_4 = (({{n{diff_0[LENGTH]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[LENGTH]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[LENGTH]}},diff_1} - {{n{diff_5[LENGTH]}},diff_5}) + ({{n{diff_3[LENGTH]}},diff_3} - {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_5 = (({{n{diff_0[LENGTH]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[LENGTH]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[LENGTH]}},diff_1} - {{n{diff_5[LENGTH]}},diff_5}) + ({{n{diff_3[LENGTH]}},diff_3} - {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_6 = (({{n{diff_0[LENGTH]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[LENGTH]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[LENGTH]}},diff_1} - {{n{diff_5[LENGTH]}},diff_5}) - ({{n{diff_3[LENGTH]}},diff_3} - {{n{diff_7[LENGTH]}},diff_7}));
    assign hth_7 = (({{n{diff_0[LENGTH]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[LENGTH]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[LENGTH]}},diff_1} - {{n{diff_5[LENGTH]}},diff_5}) - ({{n{diff_3[LENGTH]}},diff_3} - {{n{diff_7[LENGTH]}},diff_7}));


endmodule


