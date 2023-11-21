`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 10:19:08
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

module ht_vertical #(parameter WIDTH = 0, parameter NUM_INPUTS = 0) ( input  clk,
                             input  rst,
                             input  ena,
                             input wire signed [WIDTH:0]diff_0,
                             input wire signed [WIDTH:0]diff_1,
                             input wire signed [WIDTH:0]diff_2,
                             input wire signed [WIDTH:0]diff_3,
                             input wire signed [WIDTH:0]diff_4,
                             input wire signed [WIDTH:0]diff_5,
                             input wire signed [WIDTH:0]diff_6,
                             input wire signed [WIDTH:0]diff_7,
                             output reg signed [WIDTH:0]htv_0,
                             output reg signed [WIDTH:0]htv_1,
                             output reg signed [WIDTH:0]htv_2,
                             output reg signed [WIDTH:0]htv_3,
                             output reg signed [WIDTH:0]htv_4,
                             output reg signed [WIDTH:0]htv_5,
                             output reg signed [WIDTH:0]htv_6,
                             output reg signed [WIDTH:0]htv_7);

endmodule
