`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 12:58:31 AM
// Design Name: 
// Module Name: comb_aprox_3
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

module comb_aprox_3 #(parameter LENGTH = 11 , parameter WIDTH = 8, parameter HEIGHT = 16)
   (input clk,
    input rst,
    input ena, 
    input wire [((HEIGHT*WIDTH)*(LENGTH+1))-1:0] ORG,
    input wire [((HEIGHT*WIDTH)*(LENGTH+1))-1:0] CUR,
    output reg [(LENGTH+11+4):0] satd);
          
    wire signed [(LENGTH+1+3):0]   hth_result[(WIDTH * HEIGHT)-1:0]; 
    wire [(LENGTH+4+7):0]   sum_partial [7:0];
    
    wire [(LENGTH+11+1):0] satd_0[3:0];
    wire [(LENGTH+11+2):0] satd_1[1:0];
    wire [(LENGTH+11+3):0] satd_2;  
    
    reg sel; 
    
    block #(
        .LENGTH(LENGTH),        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_0 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*1)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*1)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[0]),
        .hth_result_1(hth_result[1]),
        .hth_result_2(hth_result[2]),
        .hth_result_3(hth_result[3]),
        .hth_result_4(hth_result[4]),
        .hth_result_5(hth_result[5]),
        .hth_result_6(hth_result[6]),
        .hth_result_7(hth_result[7])
    );
    
    
    block #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_1 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*2)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*2)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[8]),
        .hth_result_1(hth_result[9]),
        .hth_result_2(hth_result[10]),
        .hth_result_3(hth_result[11]),
        .hth_result_4(hth_result[12]),
        .hth_result_5(hth_result[13]),
        .hth_result_6(hth_result[14]),
        .hth_result_7(hth_result[15])
    );

    
    block #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_2 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*3)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*3)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[16]),
        .hth_result_1(hth_result[17]),
        .hth_result_2(hth_result[18]),
        .hth_result_3(hth_result[19]),
        .hth_result_4(hth_result[20]),
        .hth_result_5(hth_result[21]),
        .hth_result_6(hth_result[22]),
        .hth_result_7(hth_result[23])
    );
    
    
    block #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_3 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*4)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*4)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[24]),
        .hth_result_1(hth_result[25]),
        .hth_result_2(hth_result[26]),
        .hth_result_3(hth_result[27]),
        .hth_result_4(hth_result[28]),
        .hth_result_5(hth_result[29]),
        .hth_result_6(hth_result[30]),
        .hth_result_7(hth_result[31])
    );
    
    
    block #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_4 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*5)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*5)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[32]),
        .hth_result_1(hth_result[33]),
        .hth_result_2(hth_result[34]),
        .hth_result_3(hth_result[35]),
        .hth_result_4(hth_result[36]),
        .hth_result_5(hth_result[37]),
        .hth_result_6(hth_result[38]),
        .hth_result_7(hth_result[39])

    );
    
    
    block #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_5 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*6)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*6)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[40]),
        .hth_result_1(hth_result[41]),
        .hth_result_2(hth_result[42]),
        .hth_result_3(hth_result[43]),
        .hth_result_4(hth_result[44]),
        .hth_result_5(hth_result[45]),
        .hth_result_6(hth_result[46]),
        .hth_result_7(hth_result[47])

    );
    
    
    
    block #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_6 (
        .ORG(ORG[((WIDTH*(LENGTH+1)*7)-1)-:((LENGTH+1)*WIDTH)]),
        .CUR(CUR[((WIDTH*(LENGTH+1)*7)-1)-:((LENGTH+1)*WIDTH)]),
        .hth_result_0(hth_result[48]),
        .hth_result_1(hth_result[49]),
        .hth_result_2(hth_result[50]),
        .hth_result_3(hth_result[51]),
        .hth_result_4(hth_result[52]),
        .hth_result_5(hth_result[53]),
        .hth_result_6(hth_result[54]),
        .hth_result_7(hth_result[55])
    );
   
   
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_7 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*8)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*8)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[56]),
         .hth_result_1(hth_result[57]),
         .hth_result_2(hth_result[58]),
         .hth_result_3(hth_result[59]),
         .hth_result_4(hth_result[60]),
         .hth_result_5(hth_result[61]),
         .hth_result_6(hth_result[62]),
         .hth_result_7(hth_result[63])
     );
     
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_8 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*9)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*9)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[64]),
         .hth_result_1(hth_result[65]),
         .hth_result_2(hth_result[66]),
         .hth_result_3(hth_result[67]),
         .hth_result_4(hth_result[68]),
         .hth_result_5(hth_result[69]),
         .hth_result_6(hth_result[70]),
         .hth_result_7(hth_result[71])

     );
 
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_9 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*10)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*10)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[72]),
         .hth_result_1(hth_result[73]),
         .hth_result_2(hth_result[74]),
         .hth_result_3(hth_result[75]),
         .hth_result_4(hth_result[76]),
         .hth_result_5(hth_result[77]),
         .hth_result_6(hth_result[78]),
         .hth_result_7(hth_result[79])

     );
     
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_10 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*11)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*11)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[80]),
         .hth_result_1(hth_result[81]),
         .hth_result_2(hth_result[82]),
         .hth_result_3(hth_result[83]),
         .hth_result_4(hth_result[84]),
         .hth_result_5(hth_result[85]),
         .hth_result_6(hth_result[86]),
         .hth_result_7(hth_result[87])
     );
     
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_11 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*12)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*12)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[88]),
         .hth_result_1(hth_result[89]),
         .hth_result_2(hth_result[90]),
         .hth_result_3(hth_result[91]),
         .hth_result_4(hth_result[92]),
         .hth_result_5(hth_result[93]),
         .hth_result_6(hth_result[94]),
         .hth_result_7(hth_result[95])
     );
     
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_12 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*13)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*13)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[96]),
         .hth_result_1(hth_result[97]),
         .hth_result_2(hth_result[98]),
         .hth_result_3(hth_result[99]),
         .hth_result_4(hth_result[100]),
         .hth_result_5(hth_result[101]),
         .hth_result_6(hth_result[102]),
         .hth_result_7(hth_result[103])
     );
     
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_13 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*14)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*14)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[104]),
         .hth_result_1(hth_result[105]),
         .hth_result_2(hth_result[106]),
         .hth_result_3(hth_result[107]),
         .hth_result_4(hth_result[108]),
         .hth_result_5(hth_result[109]),
         .hth_result_6(hth_result[110]),
         .hth_result_7(hth_result[111])
     );
     
     
     
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_14 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*15)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*15)-1)-:((LENGTH+1)*WIDTH)]),
         .hth_result_0(hth_result[112]),
         .hth_result_1(hth_result[113]),
         .hth_result_2(hth_result[114]),
         .hth_result_3(hth_result[115]),
         .hth_result_4(hth_result[116]),
         .hth_result_5(hth_result[117]),
         .hth_result_6(hth_result[118]),
         .hth_result_7(hth_result[119])
     );
    
     block #(
         .LENGTH(LENGTH),
         .WIDTH(WIDTH),
         .HEIGHT(HEIGHT)
     ) block_15 (
         .ORG(ORG[((WIDTH*(LENGTH+1)*16)-1)-:((LENGTH+1)*WIDTH)]),
         .CUR(CUR[((WIDTH*(LENGTH+1)*16)-1)-:((LENGTH+1)*WIDTH)]),     
         .hth_result_0(hth_result[120]),
         .hth_result_1(hth_result[121]),
         .hth_result_2(hth_result[122]),
         .hth_result_3(hth_result[123]),
         .hth_result_4(hth_result[124]),
         .hth_result_5(hth_result[125]),
         .hth_result_6(hth_result[126]),
         .hth_result_7(hth_result[127])
     );
     
     
//==================
    block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_0 (
        .sel(sel),
        .hth_0(hth_result[0]),
        .hth_1(hth_result[8]),
        .hth_2(hth_result[16]),
        .hth_3(hth_result[24]),
        .hth_4(hth_result[32]),
        .hth_5(hth_result[40]),
        .hth_6(hth_result[48]),
        .hth_7(hth_result[56]),
        .hth_8(hth_result[64]),
        .hth_9(hth_result[72]),
        .hth_10(hth_result[80]),
        .hth_11(hth_result[88]),
        .hth_12(hth_result[96]),
        .hth_13(hth_result[104]),
        .hth_14(hth_result[112]),
        .hth_15(hth_result[120]),
        .sum_partial(sum_partial[0])
    );

    block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_1 (
        .sel(sel),
         .hth_0(hth_result[1]),
        .hth_1(hth_result[9]),
        .hth_2(hth_result[17]),
        .hth_3(hth_result[25]),
        .hth_4(hth_result[33]),
        .hth_5(hth_result[41]),
        .hth_6(hth_result[49]),
        .hth_7(hth_result[57]),
        .hth_8(hth_result[65]),
        .hth_9(hth_result[73]),
        .hth_10(hth_result[81]),
        .hth_11(hth_result[89]),
        .hth_12(hth_result[97]),
        .hth_13(hth_result[105]),
        .hth_14(hth_result[113]),
        .hth_15(hth_result[121]),

        .sum_partial(sum_partial[1])
    );


    block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_2 (
        .sel(sel),
        .hth_0(hth_result[2]),
        .hth_1(hth_result[10]),
        .hth_2(hth_result[18]),
        .hth_3(hth_result[26]),
        .hth_4(hth_result[34]),
        .hth_5(hth_result[42]),
        .hth_6(hth_result[50]),
        .hth_7(hth_result[58]),
        .hth_8(hth_result[66]),
        .hth_9(hth_result[74]),
        .hth_10(hth_result[82]),
        .hth_11(hth_result[90]),
        .hth_12(hth_result[98]),
        .hth_13(hth_result[106]),
        .hth_14(hth_result[114]),
        .hth_15(hth_result[122]),

        .sum_partial(sum_partial[2])
    );
  

    block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_3 (
        .sel(sel),
        .hth_0(hth_result[3]),
        .hth_1(hth_result[11]),
        .hth_2(hth_result[19]),
        .hth_3(hth_result[27]),
        .hth_4(hth_result[35]),
        .hth_5(hth_result[43]),
        .hth_6(hth_result[51]),
        .hth_7(hth_result[59]),
        .hth_8(hth_result[67]),
        .hth_9(hth_result[75]),
        .hth_10(hth_result[83]),
        .hth_11(hth_result[91]),
        .hth_12(hth_result[99]),
        .hth_13(hth_result[107]),
        .hth_14(hth_result[115]),
        .hth_15(hth_result[123]),

        .sum_partial(sum_partial[3])
    );


    block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_4 (
        .sel(sel),
        .hth_0(hth_result[4]),
        .hth_1(hth_result[12]),
        .hth_2(hth_result[20]),
        .hth_3(hth_result[28]),
        .hth_4(hth_result[36]),
        .hth_5(hth_result[44]),
        .hth_6(hth_result[52]),
        .hth_7(hth_result[60]),
        .hth_8(hth_result[68]),
        .hth_9(hth_result[76]),
        .hth_10(hth_result[84]),
        .hth_11(hth_result[92]),
        .hth_12(hth_result[100]),
        .hth_13(hth_result[108]),
        .hth_14(hth_result[116]),
        .hth_15(hth_result[124]),

        .sum_partial(sum_partial[4])
    );
      

    block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_5 (
        .sel(sel),
        .hth_0(hth_result[5]),
        .hth_1(hth_result[13]),
        .hth_2(hth_result[21]),
        .hth_3(hth_result[29]),
        .hth_4(hth_result[37]),
        .hth_5(hth_result[45]),
        .hth_6(hth_result[53]),
        .hth_7(hth_result[61]),
        .hth_8(hth_result[69]),
        .hth_9(hth_result[77]),
        .hth_10(hth_result[85]),
        .hth_11(hth_result[93]),
        .hth_12(hth_result[101]),
        .hth_13(hth_result[109]),
        .hth_14(hth_result[117]),
        .hth_15(hth_result[125]),

        .sum_partial(sum_partial[5])
    );
  

        block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_6 (
        .sel(sel),
        .hth_0(hth_result[6]),
        .hth_1(hth_result[14]),
        .hth_2(hth_result[22]),
        .hth_3(hth_result[30]),
        .hth_4(hth_result[38]),
        .hth_5(hth_result[46]),
        .hth_6(hth_result[54]),
        .hth_7(hth_result[62]),
        .hth_8(hth_result[70]),
        .hth_9(hth_result[78]),
        .hth_10(hth_result[86]),
        .hth_11(hth_result[94]),
        .hth_12(hth_result[102]),
        .hth_13(hth_result[110]),
        .hth_14(hth_result[118]),
        .hth_15(hth_result[126]),

        .sum_partial(sum_partial[6])    
    );

        block_htv_absum #(
        .LENGTH(LENGTH + 4),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) block_htv_absum_7 (
        .sel(sel),
        .hth_0(hth_result[7]),
        .hth_1(hth_result[15]),
        .hth_2(hth_result[23]),
        .hth_3(hth_result[31]),
        .hth_4(hth_result[39]),
        .hth_5(hth_result[47]),
        .hth_6(hth_result[55]),
        .hth_7(hth_result[63]),
        .hth_8(hth_result[71]),
        .hth_9(hth_result[79]),
        .hth_10(hth_result[87]),
        .hth_11(hth_result[95]),
        .hth_12(hth_result[103]),
        .hth_13(hth_result[111]),
        .hth_14(hth_result[119]),
        .hth_15(hth_result[127]),

        .sum_partial(sum_partial[7])
    );
    
    assign satd_0[0] = sum_partial[0] + sum_partial[1];
    assign satd_0[1] = sum_partial[2] + sum_partial[3];
    assign satd_0[2] = sum_partial[4] + sum_partial[5];
    assign satd_0[3] = sum_partial[6] + sum_partial[7];
    
    assign satd_1[0] = satd_0[0] + satd_0[1];
    assign satd_1[1] = satd_0[2] + satd_0[3];
    
    assign satd_2 = satd_1[0] + satd_1[1]; 
    
    always @(posedge clk) begin
        if (ena) begin
            if (rst) begin
                sel  <= 0;
                satd <= 0;  
            end
            else begin
                satd <= satd + satd_2;
                sel  <= ~sel; 
            end
        end
    end

            

endmodule