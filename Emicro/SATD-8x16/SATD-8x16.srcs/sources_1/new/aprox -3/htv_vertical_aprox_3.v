`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 01:19:15 AM
// Design Name: 
// Module Name: htv_vertical_aprox_3
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


module htv_vertical_aprox_3 #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
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
    output wire signed [(LENGTH+1):0]htv_0,
    output wire signed [(LENGTH+1):0]htv_1,
    output wire signed [(LENGTH+1):0]htv_2,
    output wire signed [(LENGTH+1):0]htv_3,
    output wire signed [(LENGTH+1):0]htv_4,
    output wire signed [(LENGTH+1):0]htv_5,
    output wire signed [(LENGTH+1):0]htv_6,
    output wire signed [(LENGTH+1):0]htv_7);
    
    localparam n = 1;
    assign htv_0 = (~sel) ? 
        {hth_0[LENGTH],hth_0} + {hth_8[LENGTH],hth_8} 
    :   
        {hth_0[LENGTH],hth_0} - {hth_8[LENGTH],hth_8} ;  

    assign htv_1 = (~sel) ? 
        {hth_1[LENGTH],hth_1} + {hth_9[LENGTH],hth_9} 
    :
        {hth_1[LENGTH],hth_1} - {hth_9[LENGTH],hth_9} ;

    assign htv_2 = (~sel) ? 
        {hth_2[LENGTH],hth_2} + {hth_10[LENGTH],hth_10}
    :
        {hth_2[LENGTH],hth_2} - {hth_10[LENGTH],hth_10};

    assign htv_3 = (~sel) ? 
        {hth_3[LENGTH],hth_3} + {hth_11[LENGTH],hth_11}
    :
        {hth_3[LENGTH],hth_3} - {hth_11[LENGTH],hth_11};

    assign htv_4 = (~sel) ? 
        {hth_4[LENGTH],hth_4} + {hth_12[LENGTH],hth_12}
    :
        {hth_4[LENGTH],hth_4} - {hth_12[LENGTH],hth_12};

    assign htv_5 = (~sel) ? 
        {hth_5[LENGTH],hth_5} + {hth_13[LENGTH],hth_13}
    :
        {hth_5[LENGTH],hth_5} - {hth_13[LENGTH],hth_13};

    assign htv_6 = (~sel) ? 
        {hth_6[LENGTH],hth_6} + {hth_14[LENGTH],hth_14}
    :
        {hth_6[LENGTH],hth_6} - {hth_14[LENGTH],hth_14};
        
    assign htv_7 = (~sel) ? 
        {hth_7[LENGTH],hth_7} + {hth_15[LENGTH],hth_15}
    :
        {hth_7[LENGTH],hth_7} - {hth_15[LENGTH],hth_15};

endmodule
