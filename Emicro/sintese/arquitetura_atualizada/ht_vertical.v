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
   (input sel,
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
    output wire signed [(LENGTH+4):0]htv_0,
    output wire signed [(LENGTH+4):0]htv_1,
    output wire signed [(LENGTH+4):0]htv_2,
    output wire signed [(LENGTH+4):0]htv_3,
    output wire signed [(LENGTH+4):0]htv_4,
    output wire signed [(LENGTH+4):0]htv_5,
    output wire signed [(LENGTH+4):0]htv_6,
    output wire signed [(LENGTH+4):0]htv_7);
    
    wire signed [(LENGTH+4):0] aux_0;
    wire signed [(LENGTH+4):0] aux_1;
    wire signed [(LENGTH+4):0] aux_2;
    wire signed [(LENGTH+4):0] aux_3;
    wire signed [(LENGTH+4):0] aux_4;
    wire signed [(LENGTH+4):0] aux_5;
    wire signed [(LENGTH+4):0] aux_6;
    wire signed [(LENGTH+4):0] aux_7;    
    
    localparam n = 4;

    assign aux_0 = (~sel)? 
        {{n{hth_0[LENGTH]}},hth_0} + {{n{hth_8[LENGTH]}},hth_8}
        :
        {{n{hth_0[LENGTH]}},hth_0} - {{n{hth_8[LENGTH]}},hth_8} ;
    assign aux_1 = (~sel)? 
        {{n{hth_4[LENGTH]}},hth_4 } + {{n{hth_12[LENGTH]}},hth_12}
        :
        {{n{hth_4[LENGTH]}},hth_4 } - {{n{hth_12[LENGTH]}},hth_12};
    assign aux_2 = (~sel)? 
        {{n{hth_2[LENGTH]}},hth_2 } + {{n{hth_10[LENGTH]}}, hth_10}
        :
        {{n{hth_2[LENGTH]}},hth_2 } - {{n{hth_10[LENGTH]}}, hth_10};
    assign aux_3 = (~sel)? 
        {{n{hth_6[LENGTH]}},hth_6 } + {{n{hth_14[LENGTH]}},hth_14}
        :
        {{n{hth_6[LENGTH]}},hth_6 } - {{n{hth_14[LENGTH]}},hth_14} ;
    assign aux_4 = (~sel)? 
        {{n{hth_1[LENGTH]}}, hth_1 } + {{n{hth_9[LENGTH]}},hth_9}
        :
        {{n{hth_1[LENGTH]}}, hth_1 } - {{n{hth_9[LENGTH]}},hth_9};
    assign aux_5 = (~sel)? 
        {{n{hth_5[LENGTH]}},hth_5 } + {{n{hth_13[LENGTH]}},hth_13}
        :
        {{n{hth_5[LENGTH]}},hth_5 } - {{n{hth_13[LENGTH]}},hth_13};
    assign aux_6 = (~sel)? 
        {{n{hth_3[LENGTH]}},hth_3 } + {{n{hth_11[LENGTH]}},hth_11}
        :
        {{n{hth_3[LENGTH]}},hth_3 } - {{n{hth_11[LENGTH]}},hth_11};
    assign aux_7 = (~sel)? 
        {{n{hth_7[LENGTH]}},hth_7 } + {{n{hth_15[LENGTH]}},hth_15}
        :
        {{n{hth_7[LENGTH]}},hth_7 } - {{n{hth_15[LENGTH]}},hth_15};

    assign htv_0 = ((aux_0 + aux_1) +  (aux_2 + aux_3)) + ((aux_4 + aux_5) +  (aux_6 + aux_7));
    assign htv_1 = ((aux_0 + aux_1) +  (aux_2 + aux_3)) - ((aux_4 + aux_5) +  (aux_6 + aux_7));
    assign htv_2 = ((aux_0 + aux_1) -  (aux_2 + aux_3)) + ((aux_4 + aux_5) -  (aux_6 + aux_7));
    assign htv_3 = ((aux_0 + aux_1) -  (aux_2 + aux_3)) - ((aux_4 + aux_5) -  (aux_6 + aux_7));
    assign htv_4 = ((aux_0 - aux_1) +  (aux_2 - aux_3)) + ((aux_4 - aux_5) +  (aux_6 - aux_7));
    assign htv_5 = ((aux_0 - aux_1) +  (aux_2 - aux_3)) - ((aux_4 - aux_5) +  (aux_6 - aux_7));
    assign htv_6 = ((aux_0 - aux_1) -  (aux_2 - aux_3)) + ((aux_4 - aux_5) -  (aux_6 - aux_7));
    assign htv_7 = ((aux_0 - aux_1) -  (aux_2 - aux_3)) - ((aux_4 - aux_5) -  (aux_6 - aux_7));

    
endmodule

