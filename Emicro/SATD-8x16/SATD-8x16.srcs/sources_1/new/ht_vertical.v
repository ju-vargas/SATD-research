`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 09:45:39 PM
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


module ht_vertical #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input clk,
    input rst,
    input ena,
    input sel,
    input wire signed [LENGTH+3:0]hth_0,
    input wire signed [LENGTH+3:0]hth_1,
    input wire signed [LENGTH+3:0]hth_2,
    input wire signed [LENGTH+3:0]hth_3,
    input wire signed [LENGTH+3:0]hth_4,
    input wire signed [LENGTH+3:0]hth_5,
    input wire signed [LENGTH+3:0]hth_6,
    input wire signed [LENGTH+3:0]hth_7,
    input wire signed [LENGTH+3:0]hth_8,
    input wire signed [LENGTH+3:0]hth_9,
    input wire signed [LENGTH+3:0]hth_10,
    input wire signed [LENGTH+3:0]hth_11,
    input wire signed [LENGTH+3:0]hth_12,
    input wire signed [LENGTH+3:0]hth_13,
    input wire signed [LENGTH+3:0]hth_14,
    input wire signed [LENGTH+3:0]hth_15,
    output wire signed [(LENGTH+7):0]htv_0,
    output wire signed [(LENGTH+7):0]htv_1,
    output wire signed [(LENGTH+7):0]htv_2,
    output wire signed [(LENGTH+7):0]htv_3,
    output wire signed [(LENGTH+7):0]htv_4,
    output wire signed [(LENGTH+7):0]htv_5,
    output wire signed [(LENGTH+7):0]htv_6,
    output wire signed [(LENGTH+7):0]htv_7);
    
    localparam n = 4;

    assign htv_0 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_1 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_2 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_3 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_4 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_5 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_6 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_7 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
                :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));

    
endmodule

