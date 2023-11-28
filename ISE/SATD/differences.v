`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:30 10/24/2023 
// Design Name: 
// Module Name:    differences 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module differences #(parameter WIDTH = 0, parameter SAMPLES = 0) ( input  clk,
						 input wire [(WIDTH*SAMPLES)-1:0] ORG,
						 input wire [(WIDTH*SAMPLES)-1:0] CUR,
						 output signed [WIDTH:0]diff_0,
                         output signed [WIDTH:0]diff_1,
                         output signed [WIDTH:0]diff_2,
                         output signed [WIDTH:0]diff_3,
                         output signed [WIDTH:0]diff_4,
                         output signed [WIDTH:0]diff_5,
                         output signed [WIDTH:0]diff_6,
                         output signed [WIDTH:0]diff_7);

						 	
//Part 2: Declarations ----------------------------------------------------------
	
//Part 3: Statements ------------------------------------------------------------

	//combinational part
	//tirar reset e clk eh uma boa? 
	
    assign diff_0 = (ORG[(WIDTH)-1:0]   		- CUR[(WIDTH)-1:0]);
    assign diff_1 = (ORG[(2*WIDTH)-1:(WIDTH)]   - CUR[(2*WIDTH)-1:(WIDTH)]);
    assign diff_2 = (ORG[(3*WIDTH)-1:(2*WIDTH)] - CUR[(3*WIDTH)-1:(2*WIDTH)]);
    assign diff_3 = (ORG[(4*WIDTH)-1:(3*WIDTH)] - CUR[(4*WIDTH)-1:(3*WIDTH)]);
    assign diff_4 = (ORG[(5*WIDTH)-1:(4*WIDTH)] - CUR[(5*WIDTH)-1:(4*WIDTH)]);
    assign diff_5 = (ORG[(6*WIDTH)-1:(5*WIDTH)] - CUR[(6*WIDTH)-1:(5*WIDTH)]);
    assign diff_6 = (ORG[(7*WIDTH)-1:(6*WIDTH)] - CUR[(7*WIDTH)-1:(6*WIDTH)]);
    assign diff_7 = (ORG[(8*WIDTH)-1:(7*WIDTH)] - CUR[(8*WIDTH)-1:(7*WIDTH)]);

endmodule
