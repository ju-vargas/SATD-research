`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 12:35:15 PM
// Design Name: 
// Module Name: SATD
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
 module SATD #(parameter LENGTH = 11 , parameter WIDTH = 8, parameter HEIGHT = 16)
   (input clk,
	input rst,
	input ena, 
	input wire [((LENGTH+1)*WIDTH)-1:0] ORG,
    input wire [((LENGTH+1)*WIDTH)-1:0] CUR);
		     
		     
    reg [3:0] counter;
    reg sel_buffer; 
    reg ena_soma;
    wire toggle_buffer; 
    wire shift; 
    wire [LENGTH+11:0] satd;
    
    // wires
    wire signed [LENGTH+1:0] diff_result_0;
    wire signed [LENGTH+1:0] diff_result_1;
    wire signed [LENGTH+1:0] diff_result_2;
    wire signed [LENGTH+1:0] diff_result_3;
    wire signed [LENGTH+1:0] diff_result_4;
    wire signed [LENGTH+1:0] diff_result_5;
    wire signed [LENGTH+1:0] diff_result_6;
    wire signed [LENGTH+1:0] diff_result_7;

    wire signed [(LENGTH+3):0] hth_result_0;
    wire signed [(LENGTH+3):0] hth_result_1;
    wire signed [(LENGTH+3):0] hth_result_2;
    wire signed [(LENGTH+3):0] hth_result_3;
    wire signed [(LENGTH+3):0] hth_result_4;
    wire signed [(LENGTH+3):0] hth_result_5;
    wire signed [(LENGTH+3):0] hth_result_6;
    wire signed [(LENGTH+3):0] hth_result_7;

    wire signed [(LENGTH+7):0] htv_result_0;
    wire signed [(LENGTH+7):0] htv_result_1;
    wire signed [(LENGTH+7):0] htv_result_2;
    wire signed [(LENGTH+7):0] htv_result_3;
    wire signed [(LENGTH+7):0] htv_result_4;
    wire signed [(LENGTH+7):0] htv_result_5;
    wire signed [(LENGTH+7):0] htv_result_6;
    wire signed [(LENGTH+7):0] htv_result_7;

    wire signed [(LENGTH+3):0] buffer_result_0;
    wire signed [(LENGTH+3):0] buffer_result_1;
    wire signed [(LENGTH+3):0] buffer_result_2;
    wire signed [(LENGTH+3):0] buffer_result_3;
    wire signed [(LENGTH+3):0] buffer_result_4;
    wire signed [(LENGTH+3):0] buffer_result_5;
    wire signed [(LENGTH+3):0] buffer_result_6;
    wire signed [(LENGTH+3):0] buffer_result_7;
    wire signed [(LENGTH+3):0] buffer_result_8;
    wire signed [(LENGTH+3):0] buffer_result_9;
    wire signed [(LENGTH+3):0] buffer_result_10;
    wire signed [(LENGTH+3):0] buffer_result_11;
    wire signed [(LENGTH+3):0] buffer_result_12;
    wire signed [(LENGTH+3):0] buffer_result_13;
    wire signed [(LENGTH+3):0] buffer_result_14;
    wire signed [(LENGTH+3):0] buffer_result_15;
//                       

    
    
    
    assign shift = 1; 
    
//PORT MAPS
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

    buffer #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) buffer_inst (
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .sel(sel_buffer),
        .toggle(toggle_buffer),
        .shift(shift),
        .from_hth_0(hth_result_0),
        .from_hth_1(hth_result_1),
        .from_hth_2(hth_result_2),
        .from_hth_3(hth_result_3),
        .from_hth_4(hth_result_4),
        .from_hth_5(hth_result_5),
        .from_hth_6(hth_result_6),
        .from_hth_7(hth_result_7),
        .to_htv_0(buffer_result_0 ),
        .to_htv_1(buffer_result_1 ),
        .to_htv_2(buffer_result_2 ),
        .to_htv_3(buffer_result_3 ),
        .to_htv_4(buffer_result_4 ),
        .to_htv_5(buffer_result_5 ),
        .to_htv_6(buffer_result_6 ),
        .to_htv_7(buffer_result_7 ),
        .to_htv_8(buffer_result_8 ),
        .to_htv_9(buffer_result_9 ),
        .to_htv_10(buffer_result_10),
        .to_htv_11(buffer_result_11),
        .to_htv_12(buffer_result_12),
        .to_htv_13(buffer_result_13),
        .to_htv_14(buffer_result_14),
        .to_htv_15(buffer_result_15)
    );

    ht_vertical #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) htv (
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .sel(sel),
        .hth_0(buffer_result_0 ),
        .hth_1(buffer_result_1 ),
        .hth_2(buffer_result_2 ),
        .hth_3(buffer_result_3 ),
        .hth_4(buffer_result_4 ),
        .hth_5(buffer_result_5 ),
        .hth_6(buffer_result_6 ),
        .hth_7(buffer_result_7 ),
        .hth_8(buffer_result_8 ),
        .hth_9(buffer_result_9 ),
        .hth_10(buffer_result_10),
        .hth_11(buffer_result_11),
        .hth_12(buffer_result_12),
        .hth_13(buffer_result_13),
        .hth_14(buffer_result_14),
        .hth_15(buffer_result_15),
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
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) sum_inst (
         .clk(clk),
         .rst(rst),
         .ena(ena),
         .soma_ena(ena_soma),
         .diff_0(htv_result_0),
         .diff_1(htv_result_1),
         .diff_2(htv_result_2),
         .diff_3(htv_result_3),
         .diff_4(htv_result_4),
         .diff_5(htv_result_5),
         .diff_6(htv_result_6),
         .diff_7(htv_result_7),
         .satd(satd)
     );

    assign toggle_buffer = counter[1]; 
    always @(posedge clk) begin
        if (ena) begin
            if (rst) begin
                sel_buffer <= 0; 
                counter <= "0000"; 
                ena_soma <= 0; 
            end 
            else begin 
                counter <= counter + 1;
                if (counter == 15) begin
                    counter <= 0;
                    sel_buffer <= ~sel_buffer;
                    if(sel_buffer)
                        ena_soma <= 1;
                end
            end
        end
    end
endmodule
