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
// 
//////////////////////////////////////////////////////////////////////////////////

module sum #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input  clk,
    input  rst,
    input  ena,
    input  soma_ena,
    input wire signed [(LENGTH+7):0] diff_0,
    input wire signed [(LENGTH+7):0] diff_1,
    input wire signed [(LENGTH+7):0] diff_2,
    input wire signed [(LENGTH+7):0] diff_3,
    input wire signed [(LENGTH+7):0] diff_4,
    input wire signed [(LENGTH+7):0] diff_5,
    input wire signed [(LENGTH+7):0] diff_6,
    input wire signed [(LENGTH+7):0] diff_7,
    output reg [(LENGTH + 7 + 4):0] satd); 
     
     
     
    wire [(LENGTH + 7 + 1):0] layer0 [3:0];
    wire [(LENGTH + 7 + 2):0] layer1 [1:0];
    wire [(LENGTH + 7 + 3):0] layer2;  
     
            
        //layer0[0] <= diff_0 + diff_1;
    assign layer0[0] = (diff_0[LENGTH+7]) ?
                        ((diff_1[LENGTH+7]) ?
                            (~(diff_0) + 1) + (~(diff_1) + 1)
                            :
                            (~(diff_0) + 1) + diff_1)
                        :
                        ((diff_1[LENGTH+7]) ?
                            diff_0 + (~(diff_1) + 1)
                            :
                            diff_0 + diff_1);
        
        //layer0[1] <= diff_2 + diff_3;
    assign layer0[1] = (diff_2[LENGTH+7]) ?
                        ((diff_3[LENGTH+7]) ?
                            (~(diff_2) + 1) + (~(diff_3) + 1)
                            :
                            (~(diff_2) + 1) + diff_3)
                        :
                        ((diff_3[LENGTH+7]) ?
                            diff_2 + (~(diff_3) + 1)
                            :
                            diff_2 + diff_3);


        //layer0[2] <= diff_4 + diff_5;
    assign layer0[2] = (diff_4[LENGTH+7]) ?
                        ((diff_5[LENGTH+7]) ?
                            (~(diff_4) + 1) + (~(diff_5) + 1)
                            :
                            (~(diff_4) + 1) + diff_5)
                        :
                        ((diff_5[LENGTH+7]) ?
                            diff_4 + (~(diff_5) + 1)
                            :
                            diff_4 + diff_5);


        //layer0[3] <= diff_6 + diff_7;
    assign layer0[3] = (diff_6[LENGTH+7]) ?
                        ((diff_7[LENGTH+7]) ?
                            (~(diff_6) + 1) + (~(diff_7) + 1)
                            :
                            (~(diff_6) + 1) + diff_7)
                        :
                        ((diff_7[LENGTH+7]) ?
                            diff_6 + (~(diff_7) + 1)
                            :
                            diff_6 + diff_7);
    
    assign layer1[0] = layer0[0] + layer0[1];
    assign layer1[1] = layer0[2] + layer0[3];
    assign layer2    = layer1[0] + layer1[1];        
        
        
    always @(posedge clk) begin
        if(ena) begin
            if(rst) begin
                satd <= 0; 
            end 
            else begin
                if (soma_ena) begin 
                    satd <= satd + layer2;
                end
            end
        end 
    end
           
endmodule
