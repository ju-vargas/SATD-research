

//differences
//precisa entre 8 valores a cada ciclo de clk
module differences #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input  clk,
	input wire [((LENGTH+1)*WIDTH)-1:0] ORG,
	input wire [((LENGTH+1)*WIDTH)-1:0] CUR,
	output signed [LENGTH:0]diff_0,
    output signed [LENGTH:0]diff_1,
    output signed [LENGTH:0]diff_2,
    output signed [LENGTH:0]diff_3,
    output signed [LENGTH:0]diff_4,
    output signed [LENGTH:0]diff_5,
    output signed [LENGTH:0]diff_6,
    output signed [LENGTH:0]diff_7);





    differences #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) diff (
        .clk(clk),
        .ORG(ORG),
        .CUR(CUR),
        .diff_0(diff_0),
        .diff_1(diff_1),
        .diff_2(diff_2),
        .diff_3(diff_3),
        .diff_4(diff_4),
        .diff_5(diff_5),
        .diff_6(diff_6),
        .diff_7(diff_7)
    );
//ht horizontal
module ht_horizontal #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input  clk,
    input  rst,
    input  ena,
    input wire signed [LENGTH:0]diff_0,
    input wire signed [LENGTH:0]diff_1,
    input wire signed [LENGTH:0]diff_2,
    input wire signed [LENGTH:0]diff_3,
    input wire signed [LENGTH:0]diff_4,
    input wire signed [LENGTH:0]diff_5,
    input wire signed [LENGTH:0]diff_6,
    input wire signed [LENGTH:0]diff_7,
    output wire signed [(LENGTH+3):0]hth_0,
    output wire signed [(LENGTH+3):0]hth_1,
    output wire signed [(LENGTH+3):0]hth_2,
    output wire signed [(LENGTH+3):0]hth_3,
    output wire signed [(LENGTH+3):0]hth_4,
    output wire signed [(LENGTH+3):0]hth_5,
    output wire signed [(LENGTH+3):0]hth_6,
    output wire signed [(LENGTH+3):0]hth_7);

    ht_horizontal #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) ht_horizontal_inst (
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .diff_0(diff_0),
        .diff_1(diff_1),
        .diff_2(diff_2),
        .diff_3(diff_3),
        .diff_4(diff_4),
        .diff_5(diff_5),
        .diff_6(diff_6),
        .diff_7(diff_7),
        .hth_0(hth_0),
        .hth_1(hth_1),
        .hth_2(hth_2),
        .hth_3(hth_3),
        .hth_4(hth_4),
        .hth_5(hth_5),
        .hth_6(hth_6),
        .hth_7(hth_7)
    );


//buffer
//precisa entre 8 valores a cada ciclo de clk
/*
* importante: pra manter os sinais certo:
* muda o sel do buffer a cada 16 clks (pra usar os dois)
* e a cada dois clk muda o toggle (pro valor se manter por dois cloks)
* sinal de shift ativo sempre  
*  
*/
module buffer #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input clk,
    input rst,
    input ena,
    input sel,
    input toggle, 
    input shift,
    input wire signed  [(LENGTH+7):0]from_hth_0,
    input wire signed  [(LENGTH+7):0]from_hth_1,
    input wire signed  [(LENGTH+7):0]from_hth_2,
    input wire signed  [(LENGTH+7):0]from_hth_3,
    input wire signed  [(LENGTH+7):0]from_hth_4,
    input wire signed  [(LENGTH+7):0]from_hth_5,
    input wire signed  [(LENGTH+7):0]from_hth_6,
    input wire signed  [(LENGTH+7):0]from_hth_7,
    output wire signed [(LENGTH+7):0]to_htv_0,
    output wire signed [(LENGTH+7):0]to_htv_1,
    output wire signed [(LENGTH+7):0]to_htv_2,
    output wire signed [(LENGTH+7):0]to_htv_3,
    output wire signed [(LENGTH+7):0]to_htv_4,
    output wire signed [(LENGTH+7):0]to_htv_5,
    output wire signed [(LENGTH+7):0]to_htv_6,
    output wire signed [(LENGTH+7):0]to_htv_7,
    output wire signed [(LENGTH+7):0]to_htv_8,
    output wire signed [(LENGTH+7):0]to_htv_9,
    output wire signed [(LENGTH+7):0]to_htv_10,
    output wire signed [(LENGTH+7):0]to_htv_11,
    output wire signed [(LENGTH+7):0]to_htv_12,
    output wire signed [(LENGTH+7):0]to_htv_13,
    output wire signed [(LENGTH+7):0]to_htv_14,
    output wire signed [(LENGTH+7):0]to_htv_15);
    



    buffer #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) buffer_inst (
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .sel(sel),
        .toggle(toggle),
        .shift(shift),
        .from_hth_0(from_hth_0),
        .from_hth_1(from_hth_1),
        .from_hth_2(from_hth_2),
        .from_hth_3(from_hth_3),
        .from_hth_4(from_hth_4),
        .from_hth_5(from_hth_5),
        .from_hth_6(from_hth_6),
        .from_hth_7(from_hth_7),
        .to_htv_0(to_htv_0),
        .to_htv_1(to_htv_1),
        .to_htv_2(to_htv_2),
        .to_htv_3(to_htv_3),
        .to_htv_4(to_htv_4),
        .to_htv_5(to_htv_5),
        .to_htv_6(to_htv_6),
        .to_htv_7(to_htv_7),
        .to_htv_8(to_htv_8),
        .to_htv_9(to_htv_9),
        .to_htv_10(to_htv_10),
        .to_htv_11(to_htv_11),
        .to_htv_12(to_htv_12),
        .to_htv_13(to_htv_13),
        .to_htv_14(to_htv_14),
        .to_htv_15(to_htv_15)
    );

//ht vertical
/*
* importante: fica dois ciclos com o mesmo sinal
* e muda o select (pra fazer as contas dos dois sinais)
*/
module ht_vertical #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input clk,
    input rst,
    input ena,
    input sel,
    input wire signed [LENGTH+3:0]hth_0,
    input wire signed [LENGTH+3:0]hth_1,
    input wire signed [LENGTH+3:0]hth_2,
    input wire signed [LENGTH+3:0]hth_3,
    input wire signed [LENGTH+3:0]hth_4,
    input wire signed [LENGTH+3:0]hth_5,
    input wire signed [LENGTH+3:0]hth_6,
    input wire signed [LENGTH+3:0]hth_7,
    input wire signed [LENGTH+3:0]hth_8,
    input wire signed [LENGTH+3:0]hth_9,
    input wire signed [LENGTH+3:0]hth_10,
    input wire signed [LENGTH+3:0]hth_11,
    input wire signed [LENGTH+3:0]hth_12,
    input wire signed [LENGTH+3:0]hth_13,
    input wire signed [LENGTH+3:0]hth_14,
    input wire signed [LENGTH+3:0]hth_15,
    output wire signed [(LENGTH+7):0]htv_0,
    output wire signed [(LENGTH+7):0]htv_1,
    output wire signed [(LENGTH+7):0]htv_2,
    output wire signed [(LENGTH+7):0]htv_3,
    output wire signed [(LENGTH+7):0]htv_4,
    output wire signed [(LENGTH+7):0]htv_5,
    output wire signed [(LENGTH+7):0]htv_6,
    output wire signed [(LENGTH+7):0]htv_7);


    ht_vertical #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) ht_vertical_inst (
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .sel(sel),
        .hth_0(hth_0),
        .hth_1(hth_1),
        .hth_2(hth_2),
        .hth_3(hth_3),
        .hth_4(hth_4),
        .hth_5(hth_5),
        .hth_6(hth_6),
        .hth_7(hth_7),
        .hth_8(hth_8),
        .hth_9(hth_9),
        .hth_10(hth_10),
        .hth_11(hth_11),
        .hth_12(hth_12),
        .hth_13(hth_13),
        .hth_14(hth_14),
        .hth_15(hth_15),
        .htv_0(htv_0),
        .htv_1(htv_1),
        .htv_2(htv_2),
        .htv_3(htv_3),
        .htv_4(htv_4),
        .htv_5(htv_5),
        .htv_6(htv_6),
        .htv_7(htv_7)
    );


//sum
//sai um valor a cada ciclo de clk

module sum #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input  clk,
    input  rst,
    input  ena,
    input wire signed [(LENGTH+7):0] diff_0,
    input wire signed [(LENGTH+7):0] diff_1,
    input wire signed [(LENGTH+7):0] diff_2,
    input wire signed [(LENGTH+7):0] diff_3,
    input wire signed [(LENGTH+7):0] diff_4,
    input wire signed [(LENGTH+7):0] diff_5,
    input wire signed [(LENGTH+7):0] diff_6,
    input wire signed [(LENGTH+7):0] diff_7,
    output reg [(LENGTH + 7 + 4):0] satd); 


    sum #(
        .LENGTH(LENGTH),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT)
    ) sum_inst (
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .diff_0(diff_0),
        .diff_1(diff_1),
        .diff_2(diff_2),
        .diff_3(diff_3),
        .diff_4(diff_4),
        .diff_5(diff_5),
        .diff_6(diff_6),
        .diff_7(diff_7),
        .satd(satd)
    );


    //sinais: 

    reg [3:0] counter;
    reg sel_buffer; 
    wire toggle; 
    
    assign toggle = counter[1]; 

    always @(posedge clk) begin
        if (ena) begin
            if (rst) begin
                counter <= 0; 
            end 

            else begin 
                counter <= counter + 1;
                if (counter == 15) begin
                    counter <= 0;
                    sel <= ~sel;
                end
            end
        end
    end
