`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 12:02:00 AM
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb();

  // Declaração do módulo
  reg clk, rst, ena, shift;
  reg [1:0] sel;
  reg signed [14:0] from_hth_0, from_hth_1, from_hth_2, from_hth_3,
                             from_hth_4, from_hth_5, from_hth_6, from_hth_7;
  wire signed [14:0] to_htv_0, to_htv_1, to_htv_2, to_htv_3,
                             to_htv_4, to_htv_5, to_htv_6, to_htv_7,
                             to_htv_8, to_htv_9, to_htv_10, to_htv_11,
                             to_htv_12, to_htv_13, to_htv_14, to_htv_15;

  wire [1:0] ajuda_sel; 
  reg sel_aux; 
  // Instanciação do módulo
  buffer #(7, 8, 16)  DUT (
    .clk(clk),
    .rst(rst),
    .ena(ena),
    .sel(sel_aux),
    .toggle(sel[1]),
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

    assign ajuda_sel[0] = sel_aux;
    assign ajuda_sel[1] = sel[1];

  // Gerador de clock
  initial begin
    clk = 0;
    shift = 0;
    sel_aux = 0;
    forever #5 clk = ~clk;
  end

  // Inicialização
  initial begin
    rst = 1;
    sel_aux = 0; 
    #10 
    rst = 0;
    ena = 1; // Habilitar o módulo
    shift = 1;
    
    #5

    from_hth_0 = 15'b000001001101001; //617
    from_hth_1 = 15'b000010111011001; //1497
    from_hth_2 = 15'b000000111010011; //467
    from_hth_3 = 15'b000000011100111; //231
    from_hth_4 = 15'b000100110001001; //2441 
    from_hth_5 = 15'b000110000101101; //3117
    from_hth_6 = 15'b111011000111011; //-2501
    from_hth_7 = 15'b110111100111011; //-4293
    
    #5

    from_hth_0 = 15'b000000100000011; //259
    from_hth_1 = 15'b000000100001011; //267
    from_hth_2 = 15'b110011101010011; //-6319
    from_hth_3 = 15'b000101101111101; //2941
    from_hth_4 = 15'b111111101011111; //-161
    from_hth_5 = 15'b000000001000011; //67
    from_hth_6 = 15'b000110100101101; //3373
    from_hth_7 = 15'b111011111101101; //-2067
    
    #5

    from_hth_0 = 14'b01110111011101; // 3757
    from_hth_1 = 14'b10001011011011; // -5325
    from_hth_2 = 14'b00001001101111; // 1519
    from_hth_3 = 14'b11111011111011; // -445
    from_hth_4 = 14'b10101010101111; // -2153
    from_hth_5 = 14'b01010101010111; // 2735
    from_hth_6 = 14'b11011101100101; // -1675
    from_hth_7 = 14'b00111111111101; // 3965
    
    #5
    
    from_hth_0 = 14'b10111010111011; // -2245
    from_hth_1 = 14'b00110011001111; // 3183
    from_hth_2 = 14'b11001100110011; // -3189
    from_hth_3 = 14'b01001001001011; // 2347
    from_hth_4 = 14'b11110011110011; // -3971
    from_hth_5 = 14'b00011000011011; // 839
    from_hth_6 = 14'b11101011101011; // -3005
    from_hth_7 = 14'b10010100010101; // -1883
    
    #5
    
    from_hth_0 = 14'b01011001011011; // 2987
    from_hth_1 = 14'b11100111100111; // -3593
    from_hth_2 = 14'b00101000101011; // 1323
    from_hth_3 = 14'b11010111010111; // -2757
    from_hth_4 = 14'b01000101000111; // 2015
    from_hth_5 = 14'b10110010110011; // -2765
    from_hth_6 = 14'b01100101100111; // 3631
    from_hth_7 = 14'b10011110011101; // -4667
    
    #5
    
    from_hth_0 = 14'b01001101001101; // 2389
    from_hth_1 = 14'b11110011110001; // -3967
    from_hth_2 = 14'b00111000111001; // 1881
    from_hth_3 = 14'b11000111000101; // -3715
    from_hth_4 = 14'b01000001000001; // 1025
    from_hth_5 = 14'b10111110111101; // -2075
    from_hth_6 = 14'b01101001101001; // 3313
    from_hth_7 = 14'b10010110010101; // -2955
    
    #5
    
    from_hth_0 = 14'b00011100011101; // 721
    from_hth_1 = 14'b11100011100001; // -3823
    from_hth_2 = 14'b00110100110101; // 3381
    from_hth_3 = 14'b11001011001001; // -3567
    from_hth_4 = 14'b01011101011101; // 2965
    from_hth_5 = 14'b10100010100001; // -3263
    from_hth_6 = 14'b01111101111101; // 4037
    from_hth_7 = 14'b10000010000001; // -4095
    
    #5
    
    from_hth_0 = 14'b00001100001101; // 307
    from_hth_1 = 14'b11110011110011; // -3965
    from_hth_2 = 14'b00111100111101; // 1965
    from_hth_3 = 14'b11000011000011; // -3587
    from_hth_4 = 14'b01000101000101; // 2053
    from_hth_5 = 14'b10111010111001; // -2227
    from_hth_6 = 14'b01101101101101; // 3557
    from_hth_7 = 14'b10010010010001; // -3983
    
    #5
    
    from_hth_0 = 14'b00010100010101; // 1285
    from_hth_1 = 14'b11101011101001; // -2995
    from_hth_2 = 14'b00100100100101; // 2341
    from_hth_3 = 14'b11011011011001; // -2763
    from_hth_4 = 14'b01011101011111; // 2983
    from_hth_5 = 14'b10100010100011; // -3253
    from_hth_6 = 14'b01110101110101; // 3757
    from_hth_7 = 14'b10001010001001; // -5367
    
    #5
    
    from_hth_0 = 14'b00001000001001; // 529
    from_hth_1 = 14'b11110111110101; // -3821
    from_hth_2 = 14'b00111000111011; // 1875
    from_hth_3 = 14'b11000111000111; // -3713
    from_hth_4 = 14'b01000001000011; // 1027
    from_hth_5 = 14'b10111110111111; // -2073
    from_hth_6 = 14'b01101001101011; // 3315
    from_hth_7 = 14'b10010110010111; // -2953
    
    #5
    
    from_hth_0 = 14'b00011100011111; // 729
    from_hth_1 = 14'b11100011100011; // -3821
    from_hth_2 = 14'b00110100110111; // 3385
    from_hth_3 = 14'b11001011001011; // -3563
    from_hth_4 = 14'b01011101011111; // 2967
    from_hth_5 = 14'b10100010100011; // -3253
    from_hth_6 = 14'b01111101111111; // 4041
    from_hth_7 = 14'b10000010000011; // -4093
    
    #5
    
    from_hth_0 = 14'b00001100001111; // 311
    from_hth_1 = 14'b11110011110001; // -3967
    from_hth_2 = 14'b00111100111111; // 1967
    from_hth_3 = 14'b11000011000001; // -3583
    from_hth_4 = 14'b01000101000111; // 2055
    from_hth_5 = 14'b10111010111001; // -2227
    from_hth_6 = 14'b01101101101111; // 3559
    from_hth_7 = 14'b10010010010011; // -3981
    
    #5
    
    from_hth_0 = 14'b00010100010111; // 1287
    from_hth_1 = 14'b11101011101001; // -2995
    from_hth_2 = 14'b00100100100111; // 2343
    from_hth_3 = 14'b11011011011001; // -2763
    from_hth_4 = 14'b01011101011101; // 2989
    from_hth_5 = 14'b10100010100001; // -3263
    from_hth_6 = 14'b01110101110111; // 3767
    from_hth_7 = 14'b10001010001011; // -5365
    
    #5
    
    from_hth_0 = 14'b00001000001011; // 531
    from_hth_1 = 14'b11110111110111; // -3819
    from_hth_2 = 14'b00111000111001; // 1873
    from_hth_3 = 14'b11000111000101; // -3717
    from_hth_4  = 14'b01000001000001; // 1025
    from_hth_5  = 14'b10111110111101; // -2075
    from_hth_6  = 14'b01101001101001; // 3313
    from_hth_7  = 14'b10010110010101; // -2955
    
    #5

    from_hth_0 = 14'b00011100011101; // 729
    from_hth_1 = 14'b11100011100011; // -3821
    from_hth_2 = 14'b00110100110101; // 3381
    from_hth_3 = 14'b11001011001011; // -3565
    from_hth_4 = 14'b01011101011101; // 2989
    from_hth_5 = 14'b10100010100001; // -3263
    from_hth_6 = 14'b01111101111101; // 4045
    from_hth_7 = 14'b10000010000001; // -4095
    
    #5

    from_hth_0 = 14'b00001100001101; // 309
    from_hth_1 = 14'b11110011110011; // -3965
    from_hth_2 = 14'b00111100111101; // 1965
    from_hth_3 = 14'b11000011000011; // -3587
    from_hth_4 = 14'b01000101000101; // 2053
    from_hth_5 = 14'b10111010111011; // -2225
    from_hth_6 = 14'b01101101101101; // 3557
    from_hth_7 = 14'b10010010010001; // -3983
    
    #5
    
    from_hth_0 = 14'b0; // 309
    from_hth_1 = 14'b0; // -3965
    from_hth_2 = 14'b0; // 1965
    from_hth_3 = 14'b0; // -3587
    from_hth_4 = 14'b0; // 2053
    from_hth_5 = 14'b0; // -2225
    from_hth_6 = 14'b0; // 3557
    from_hth_7 = 14'b0; // -3983
    
    sel_aux = 1; 


    #1000
    $finish;
    
  end

  // Contador para o sinal sel
  always @(posedge clk) begin
    if (rst)
      sel <= 0;
    else if (sel == 3)
      sel <= 0;
    else
      sel <= sel + 1;
      
  end

  // Monitoramento das saídas
  always @(posedge clk) begin
    if (ena) begin
      $display("%4t: sel = %0b, to_htv_0 = %d, to_htv_1 = %d, ...", $time, sel, to_htv_0, to_htv_1);

        
    end
  end

endmodule
