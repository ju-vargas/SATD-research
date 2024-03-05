`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 06:22:35 PM
// Design Name: 
// Module Name: ht_horizontal_tb
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

module ht_horizontal_tb;

    reg clk;
    reg rst;
    reg ena;
    reg signed [7:0] diff_0, diff_1, diff_2, diff_3, diff_4, diff_5, diff_6, diff_7;
    wire signed [10:0] hth_0, hth_1, hth_2, hth_3, hth_4, hth_5, hth_6, hth_7;

    // DUT instantiation
    ht_horizontal #(7, 8, 16) DUT (.clk(clk), .rst(rst), .ena(ena),
                                   .diff_0(diff_0), .diff_1(diff_1), .diff_2(diff_2),
                                   .diff_3(diff_3), .diff_4(diff_4), .diff_5(diff_5),
                                   .diff_6(diff_6), .diff_7(diff_7),
                                   .hth_0(hth_0), .hth_1(hth_1), .hth_2(hth_2),
                                   .hth_3(hth_3), .hth_4(hth_4), .hth_5(hth_5),
                                   .hth_6(hth_6), .hth_7(hth_7));

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    initial begin
    // Initialize signals
        clk = 1'b0;
        rst = 1'b1;
        ena = 1'b0;
        diff_0 = 8'b00000100;
        diff_1 = 8'b00000111;
        diff_2 = 8'b00101011;
        diff_3 = 8'b11111101;
        diff_4 = 8'b01010111;
        diff_5 = 8'b00000010;
        diff_6 = 8'b01011010;
        diff_7 = 8'b01111111;

        #10; // Wait for reset to de-assert

        rst = 1'b0;
        ena = 1'b1;

        // Apply different test stimuli
        //diff_0 = 8'b00000001; // Positive value
        
        //#10;
        //diff_0 = 8'b11111111; // Negative value
        
        //#10;
        //diff_0 = 8'b10101010; // Mixed value
        
        //#10;
        //diff_1 = 8'b01010101; // Apply different values to other inputs
  
        //#10;
        //diff_2 = 8'b10100101;
        
        //#10;
        //diff_3 = 8'b00001111;
  
        #10;
        diff_0 = 8'b11111100;
        diff_1 = 8'b10000001;
        diff_2 = 8'b01111111;
        diff_3 = 8'b00000000;
        diff_4 = 8'b11111111;
        diff_5 = 8'b10000001;
        diff_6 = 8'b10100100;
        diff_7 = 8'b01111111;
        

        // Additional test cases can be added here
    #60
    $finish;
    end

    always @(posedge clk) begin
        // Monitor outputs
        $monitor("diff_0 = %d, diff_1 = %d, diff_2 = %d, diff_3 = %d, diff_4 = %d, diff_5 = %d, diff_6 = %d, diff_7 = %d\n",
           diff_0, diff_1, diff_2, diff_3, diff_4, diff_5, diff_6, diff_7);
        $monitor("hth_0 = %d, hth_1 = %d, hth_2 = %d, hth_3 = %d, hth_4 = %d, hth_5 = %d, hth_6 = %d, hth_7 = %d\n",
           hth_0, hth_1, hth_2, hth_3, hth_4, hth_5, hth_6, hth_7);
    end

endmodule
