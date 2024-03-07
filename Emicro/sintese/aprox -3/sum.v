`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 02:36:47 AM
// Design Name: 
// Module Name: sum
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
// me da a soma absoluta de apenas 8 elementos por vez 

//////////////////////////////////////////////////////////////////////////////////
module sum #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input wire signed [(LENGTH):0] diff_0,
    input wire signed [(LENGTH):0] diff_1,
    input wire signed [(LENGTH):0] diff_2,
    input wire signed [(LENGTH):0] diff_3,
    input wire signed [(LENGTH):0] diff_4,
    input wire signed [(LENGTH):0] diff_5,
    input wire signed [(LENGTH):0] diff_6,
    input wire signed [(LENGTH):0] diff_7,
    output wire [(LENGTH + 3):0] abs_sum); 
     
     
     
    wire [(LENGTH + 1):0] layer0 [3:0];
    wire [(LENGTH + 2):0] layer1 [1:0];
     
            
        //layer0[0] <= diff_0 + diff_1;
    assign layer0[0] = (diff_0[LENGTH]) ?
                        ((diff_1[LENGTH]) ?
                            (~(diff_0) + 1) + (~(diff_1) + 1)
                            :
                            (~(diff_0) + 1) + diff_1)
                        :
                        ((diff_1[LENGTH]) ?
                            diff_0 + (~(diff_1) + 1)
                            :
                            diff_0 + diff_1);
        
        //layer0[1] <= diff_2 + diff_3;
    assign layer0[1] = (diff_2[LENGTH]) ?
                        ((diff_3[LENGTH]) ?
                            (~(diff_2) + 1) + (~(diff_3) + 1)
                            :
                            (~(diff_2) + 1) + diff_3)
                        :
                        ((diff_3[LENGTH]) ?
                            diff_2 + (~(diff_3) + 1)
                            :
                            diff_2 + diff_3);


        //layer0[2] <= diff_4 + diff_5;
    assign layer0[2] = (diff_4[LENGTH]) ?
                        ((diff_5[LENGTH]) ?
                            (~(diff_4) + 1) + (~(diff_5) + 1)
                            :
                            (~(diff_4) + 1) + diff_5)
                        :
                        ((diff_5[LENGTH]) ?
                            diff_4 + (~(diff_5) + 1)
                            :
                            diff_4 + diff_5);


        //layer0[3] <= diff_6 + diff_7;
    assign layer0[3] = (diff_6[LENGTH]) ?
                        ((diff_7[LENGTH]) ?
                            (~(diff_6) + 1) + (~(diff_7) + 1)
                            :
                            (~(diff_6) + 1) + diff_7)
                        :
                        ((diff_7[LENGTH]) ?
                            diff_6 + (~(diff_7) + 1)
                            :
                            diff_6 + diff_7);
    
    assign layer1[0] = layer0[0] + layer0[1];
    assign layer1[1] = layer0[2] + layer0[3];
    assign abs_sum   = layer1[0] + layer1[1];               
endmodule
