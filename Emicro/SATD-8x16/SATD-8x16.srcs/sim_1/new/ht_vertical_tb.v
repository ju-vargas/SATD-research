`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2024 01:32:09 AM
// Design Name: 
// Module Name: ht_vertical_tb
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


module ht_vertical_tb;

reg clk;
reg rst;
reg ena;
reg sel;
reg signed [10:0] hth_0, hth_1, hth_2, hth_3, hth_4, hth_5, hth_6, hth_7;
reg signed [10:0] hth_8, hth_9, hth_10, hth_11, hth_12, hth_13, hth_14, hth_15;
wire signed [14:0] htv_0, htv_1, htv_2, htv_3, htv_4, htv_5, htv_6, htv_7;

// DUT instantiation
ht_vertical #(7, 8, 16) DUT (.clk(clk), .rst(rst), .ena(ena), .sel(sel),
                               .hth_0(hth_0), .hth_1(hth_1), .hth_2(hth_2), .hth_3(hth_3),
                               .hth_4(hth_4), .hth_5(hth_5), .hth_6(hth_6), .hth_7(hth_7),
                               .hth_8(hth_8), .hth_9(hth_9), .hth_10(hth_10), .hth_11(hth_11),
                               .hth_12(hth_12), .hth_13(hth_13), .hth_14(hth_14), .hth_15(hth_15),
                               .htv_0(htv_0), .htv_1(htv_1), .htv_2(htv_2), .htv_3(htv_3),
                               .htv_4(htv_4), .htv_5(htv_5), .htv_6(htv_6), .htv_7(htv_7));

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    initial begin
    // Initialize signals
        clk = 1'b0;
        rst = 1'b1;
        ena = 1'b0;
        sel = 1'b0; // Select vertical filter

        hth_0  = 11'b11111111100;
        hth_1  = 11'b11100100000;
        hth_2  = 11'b01111111001;
        hth_3  = 11'b00000000000;
        hth_4  = 11'b11111111111;
        hth_5  = 11'b10000001001;
        hth_6  = 11'b11010100000;
        hth_7  = 11'b01111111001;
        hth_8  = 11'b00011001001;
        hth_9  = 11'b00100011011;
        hth_10 = 11'b01011000000;
        hth_11 = 11'b11001000000;
        hth_12 = 11'b00111111011;
        hth_13 = 11'b01100011011;
        hth_14 = 11'b10000001001;
        hth_15 = 11'b10010110000;

        #10; // Wait for reset to de-assert

        rst = 1'b0;
        ena = 1'b1;

        // Apply different test stimuli
//        hth_0 = 11'b00000000101; // Positive value
//        hth_8 = 11'b11111111010; // Negative value
//        #10;
//        hth_1 = 11'b01010101000;
//        hth_9 = 11'b10101010111;
//        #10;
//        hth_2 = 11'b10100101001;
//        hth_10 = 11'b01010101010;
//        #10;
//        hth_3 = 11'b00001111111;
//        hth_11 = 11'b11110000000;

//        #10;
//        hth_4 = 11'b10101010100;
//        hth_12 = 11'b01010101011;
//        #10;
//        hth_5 = 11'b01010100111;
//        hth_13 = 11'b10101011000;
//        #10;
//        hth_6 = 11'b10000000001;
//        hth_14 = 11'b01111111110;
//        #10;
//        hth_7 = 11'b00100100100;
//        hth_15 = 11'b11011011011;

        // Wait for some time to see the outputs
        #50;
        sel = 1'b1;
        
        #50
        $stop; // Stop simulation
    end

    // Monitor outputs
    always @(posedge clk) begin
      if (ena) begin
        $display("htv_0: %d, htv_1: %d, htv_2: %d, htv_3: %d", htv_0, htv_1, htv_2, htv_3);
        $display("htv_4: %d, htv_5: %d, htv_6: %d, htv_7: %d", htv_4, htv_5, htv_6, htv_7);
      end
    end

endmodule

