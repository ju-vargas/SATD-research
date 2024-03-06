`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 11:58:18 AM
// Design Name: 
// Module Name: differences
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

module differences #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input wire [((LENGTH+1)*WIDTH)-1:0] ORG,
	input wire [((LENGTH+1)*WIDTH)-1:0] CUR,
	output signed [(LENGTH+1):0]diff_0,
    output signed [(LENGTH+1):0]diff_1,
    output signed [(LENGTH+1):0]diff_2,
    output signed [(LENGTH+1):0]diff_3,
    output signed [(LENGTH+1):0]diff_4,
    output signed [(LENGTH+1):0]diff_5,
    output signed [(LENGTH+1):0]diff_6,
    output signed [(LENGTH+1):0]diff_7);

						 	
//Part 2: Declarations ----------------------------------------------------------
	
//Part 3: Statements ------------------------------------------------------------
	
    assign diff_0 = (ORG[(LENGTH)-1:0]   		  - CUR[(LENGTH)-1:0]);
    assign diff_1 = (ORG[(2*LENGTH)-1:(LENGTH)]   - CUR[(2*LENGTH)-1:(LENGTH)]);
    assign diff_2 = (ORG[(3*LENGTH)-1:(2*LENGTH)] - CUR[(3*LENGTH)-1:(2*LENGTH)]);
    assign diff_3 = (ORG[(4*LENGTH)-1:(3*LENGTH)] - CUR[(4*LENGTH)-1:(3*LENGTH)]);
    assign diff_4 = (ORG[(5*LENGTH)-1:(4*LENGTH)] - CUR[(5*LENGTH)-1:(4*LENGTH)]);
    assign diff_5 = (ORG[(6*LENGTH)-1:(5*LENGTH)] - CUR[(6*LENGTH)-1:(5*LENGTH)]);
    assign diff_6 = (ORG[(7*LENGTH)-1:(6*LENGTH)] - CUR[(7*LENGTH)-1:(6*LENGTH)]);
    assign diff_7 = (ORG[(8*LENGTH)-1:(7*LENGTH)] - CUR[(8*LENGTH)-1:(7*LENGTH)]);

endmodule
