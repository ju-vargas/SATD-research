    m2[j][0] = diff[jj] + diff[jj + 4];
    m2[j][1] = diff[jj + 1] + diff[jj + 5];
    m2[j][2] = diff[jj + 2] + diff[jj + 6];
    m2[j][3] = diff[jj + 3] + diff[jj + 7];
    m2[j][4] = diff[jj] - diff[jj + 4];
    m2[j][5] = diff[jj + 1] - diff[jj + 5];
    m2[j][6] = diff[jj + 2] - diff[jj + 6];
    m2[j][7] = diff[jj + 3] - diff[jj + 7];

    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [(WIDTH+1):0] column1_input_0 = diff_ + diff_;
    wire signed [(WIDTH+1):0] column1_input_1 = diff_ + diff_;
    wire signed [(WIDTH+1):0] column1_input_2 = diff_ + diff_;
    wire signed [(WIDTH+1):0] column1_input_3 = diff_ + diff_;
    wire signed [(WIDTH+1):0] column1_input_4 = diff_ - diff_; 
    wire signed [(WIDTH+1):0] column1_input_5 = diff_ - diff_; 
    wire signed [(WIDTH+1):0] column1_input_6 = diff_ - diff_;
    wire signed [(WIDTH+1):0] column1_input_7 = diff_ - diff_;
             
    //cada linha pra UMA AMOSTRA DE n bits
    wire signed [(WIDTH+2):0] column2_input_0 = column1[0] + column1[2]; 
    wire signed [(WIDTH+2):0] column2_input_1 = column1[1] + column1[3]; 
    wire signed [(WIDTH+2):0] column2_input_2 = column1[0] - column1[2];
    wire signed [(WIDTH+2):0] column2_input_3 = column1[1] - column1[3];
    wire signed [(WIDTH+2):0] column2_input_4 = column1[4] + column1[6];
    wire signed [(WIDTH+2):0] column2_input_5 = column1[5] + column1[7];
    wire signed [(WIDTH+2):0] column2_input_6 = column1[4] - column1[6];
    wire signed [(WIDTH+2):0] column2_input_7 = column1[5] - column1[7];

    //cada linha pra UMA AMOSTRA DE n bits                            
    wire signed [(WIDTH+3):0] htv_input_0 = column2[0] + column2[1]; 
    wire signed [(WIDTH+3):0] htv_input_1 = column2[0] - column2[1]; 
    wire signed [(WIDTH+3):0] htv_input_2 = column2[2] + column2[3];
    wire signed [(WIDTH+3):0] htv_input_3 = column2[2] - column2[3];
    wire signed [(WIDTH+3):0] htv_input_4 = column2[4] + column2[5];
    wire signed [(WIDTH+3):0] htv_input_5 = column2[4] - column2[5];
    wire signed [(WIDTH+3):0] htv_input_6 = column2[6] + column2[7];
    wire signed [(WIDTH+3):0] htv_input_7 = column2[6] - column2[7];


/*
 * HORIZONTAL
 */                    
 
m2_0 = (diff_0 + diff_4)
m2_1 = (diff_1 + diff_5)
m2_2 = (diff_2 + diff_6)
m2_3 = (diff_3 + diff_7)
m2_4 = (diff_0 - diff_4)
m2_5 = (diff_1 - diff_5)
m2_6 = (diff_2 - diff_6)
m2_7 = (diff_3 - diff_7)

m1_0 = m2_0 + m2_2 
m1_1 = m2_1 + m2_3  
m1_2 = m2_0 - m2_2  
m1_3 = m2_1 - m2_3  
m1_4 = m2_4 + m2_6  
m1_5 = m2_5 + m2_7  
m1_6 = m2_4 - m2_6  
m1_7 = m2_5 - m2_7 


m1_0 = (diff_0 + diff_4) + (diff_2 + diff_6)
m1_1 = (diff_1 + diff_5) + (diff_3 + diff_7)
m1_2 = (diff_0 + diff_4) - (diff_2 + diff_6)
m1_3 = (diff_1 + diff_5) - (diff_3 + diff_7)
m1_4 = (diff_0 - diff_4) + (diff_2 - diff_6)
m1_5 = (diff_1 - diff_5) + (diff_3 - diff_7)
m1_6 = (diff_0 - diff_4) - (diff_2 - diff_6)
m1_7 = (diff_1 - diff_5) - (diff_3 - diff_7)

hth_0 = m1_0 + m1_1
hth_1 = m1_0 - m1_1
hth_2 = m1_2 + m1_3
hth_3 = m1_2 - m1_3
hth_4 = m1_4 + m1_5
hth_5 = m1_4 - m1_5
hth_6 = m1_6 + m1_7
hth_7 = m1_6 - m1_7


assign hth_0 = ((diff_0 + diff_4) + (diff_2 + diff_6)) + ((diff_1 + diff_5) + (diff_3 + diff_7));
assign hth_1 = ((diff_0 + diff_4) + (diff_2 + diff_6)) - ((diff_1 + diff_5) + (diff_3 + diff_7));
assign hth_2 = ((diff_0 + diff_4) - (diff_2 + diff_6)) + ((diff_1 + diff_5) - (diff_3 + diff_7));
assign hth_3 = ((diff_0 + diff_4) - (diff_2 + diff_6)) - ((diff_1 + diff_5) - (diff_3 + diff_7));
assign hth_4 = ((diff_0 - diff_4) + (diff_2 - diff_6)) + ((diff_1 - diff_5) + (diff_3 - diff_7));
assign hth_5 = ((diff_0 - diff_4) + (diff_2 - diff_6)) - ((diff_1 - diff_5) + (diff_3 - diff_7));
assign hth_6 = ((diff_0 - diff_4) - (diff_2 - diff_6)) + ((diff_1 - diff_5) - (diff_3 - diff_7));
assign hth_7 = ((diff_0 - diff_4) - (diff_2 - diff_6)) - ((diff_1 - diff_5) - (diff_3 - diff_7));


localparam n = 3;


   
    assign hth_0 = (({{n{diff_0[7]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[7]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[7]}},diff_1} + {{n{diff_5[7]}},diff_5}) + ({{n{diff_3[7]}},diff_3} + {{n{diff_7[7]}},diff_7}));
    assign hth_1 = (({{n{diff_0[7]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[7]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[7]}},diff_1} + {{n{diff_5[7]}},diff_5}) + ({{n{diff_3[7]}},diff_3} + {{n{diff_7[7]}},diff_7}));
    assign hth_2 = (({{n{diff_0[7]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[7]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[7]}},diff_1} + {{n{diff_5[7]}},diff_5}) - ({{n{diff_3[7]}},diff_3} + {{n{diff_7[7]}},diff_7}));
    assign hth_3 = (({{n{diff_0[7]}}, diff_0} + {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[7]}},diff_2} + {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[7]}},diff_1} + {{n{diff_5[7]}},diff_5}) - ({{n{diff_3[7]}},diff_3} + {{n{diff_7[7]}},diff_7}));
    assign hth_4 = (({{n{diff_0[7]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[7]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[7]}},diff_1} - {{n{diff_5[7]}},diff_5}) + ({{n{diff_3[7]}},diff_3} - {{n{diff_7[7]}},diff_7}));
    assign hth_5 = (({{n{diff_0[7]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) + ({{n{diff_2[7]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[7]}},diff_1} - {{n{diff_5[7]}},diff_5}) + ({{n{diff_3[7]}},diff_3} - {{n{diff_7[7]}},diff_7}));
    assign hth_6 = (({{n{diff_0[7]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[7]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) + (({{n{diff_1[7]}},diff_1} - {{n{diff_5[7]}},diff_5}) - ({{n{diff_3[7]}},diff_3} - {{n{diff_7[7]}},diff_7}));
    assign hth_7 = (({{n{diff_0[7]}}, diff_0} - {{n{diff_4[LENGTH]}},diff_4}) - ({{n{diff_2[7]}},diff_2} - {{n{diff_6[LENGTH]}},diff_6})) - (({{n{diff_1[7]}},diff_1} - {{n{diff_5[7]}},diff_5}) - ({{n{diff_3[7]}},diff_3} - {{n{diff_7[7]}},diff_7}));

/*
 * VERTICAL
 */    


 
//PARTE 1



    m1[0] = (hth[0] + hth[8] )
    m1[1] = (hth[1] + hth[9] )
    m1[2] = (hth[2] + hth[10])
    m1[3] = (hth[3] + hth[11])
    m1[4] = (hth[4] + hth[12])
    m1[5] = (hth[5] + hth[13])
    m1[6] = (hth[6] + hth[14])
    m1[7] = (hth[7] + hth[15])


    m2[0] = ((hth[0] + hth[8] ) + (hth[4] + hth[12]))
    m2[1] = ((hth[1] + hth[9] ) + (hth[5] + hth[13]))
    m2[2] = ((hth[2] + hth[10]) + (hth[6] + hth[14]))
    m2[3] = ((hth[3] + hth[11]) + (hth[7] + hth[15]))
    m2[4] = ((hth[0] + hth[8] ) - (hth[4] + hth[12]))
    m2[5] = ((hth[1] + hth[9] ) - (hth[5] + hth[13]))
    m2[6] = ((hth[2] + hth[10]) - (hth[6] + hth[14]))
    m2[7] = ((hth[3] + hth[11]) - (hth[7] + hth[15]))

    m1[0] = (((hth[0] + hth[8] ) + (hth[4] + hth[12])) + ((hth[2] + hth[10]) + (hth[6] + hth[14])))
    m1[1] = (((hth[1] + hth[9] ) + (hth[5] + hth[13])) + ((hth[3] + hth[11]) + (hth[7] + hth[15])))
    m1[2] = (((hth[0] + hth[8] ) + (hth[4] + hth[12])) - ((hth[2] + hth[10]) + (hth[6] + hth[14])))
    m1[3] = (((hth[1] + hth[9] ) + (hth[5] + hth[13])) - ((hth[3] + hth[11]) + (hth[7] + hth[15])))
    m1[4] = (((hth[0] + hth[8] ) - (hth[4] + hth[12])) + ((hth[2] + hth[10]) - (hth[6] + hth[14])))
    m1[5] = (((hth[1] + hth[9] ) - (hth[5] + hth[13])) + ((hth[3] + hth[11]) - (hth[7] + hth[15])))
    m1[6] = (((hth[0] + hth[8] ) - (hth[4] + hth[12])) - ((hth[2] + hth[10]) - (hth[6] + hth[14])))
    m1[7] = (((hth[1] + hth[9] ) - (hth[5] + hth[13])) - ((hth[3] + hth[11]) - (hth[7] + hth[15])))
 
htv[0] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) + ((hth[2] + hth[10]) + (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) + (hth[5] + hth[13])) + ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
htv[1] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) + ((hth[2] + hth[10]) + (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) + (hth[5] + hth[13])) + ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
htv[2] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) - ((hth[2] + hth[10]) + (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) + (hth[5] + hth[13])) - ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
htv[3] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) - ((hth[2] + hth[10]) + (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) + (hth[5] + hth[13])) - ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
htv[4] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) + ((hth[2] + hth[10]) - (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) - (hth[5] + hth[13])) + ((hth[3] + hth[11]) - (hth[7] + hth[15]))))
htv[5] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) + ((hth[2] + hth[10]) - (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) - (hth[5] + hth[13])) + ((hth[3] + hth[11]) - (hth[7] + hth[15]))))
htv[6] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) - ((hth[2] + hth[10]) - (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) - (hth[5] + hth[13])) - ((hth[3] + hth[11]) - (hth[7] + hth[15]))))
htv[7] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) - ((hth[2] + hth[10]) - (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) - (hth[5] + hth[13])) - ((hth[3] + hth[11]) - (hth[7] + hth[15]))))


//correto!!

htv_0 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_1 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_2 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_3 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_4 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_5 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_6 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
htv_7 = ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))



//PARTE 2


htv[0] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) + ((hth[2] - hth[10]) + (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) + (hth[5] - hth[13])) + ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
htv[1] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) + ((hth[2] - hth[10]) + (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) + (hth[5] - hth[13])) + ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
htv[2] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) - ((hth[2] - hth[10]) + (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) + (hth[5] - hth[13])) - ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
htv[3] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) - ((hth[2] - hth[10]) + (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) + (hth[5] - hth[13])) - ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
htv[4] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) + ((hth[2] - hth[10]) - (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) - (hth[5] - hth[13])) + ((hth[3] - hth[11]) - (hth[7] - hth[15]))))
htv[5] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) + ((hth[2] - hth[10]) - (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) - (hth[5] - hth[13])) + ((hth[3] - hth[11]) - (hth[7] - hth[15]))))
htv[6] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) - ((hth[2] - hth[10]) - (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) - (hth[5] - hth[13])) - ((hth[3] - hth[11]) - (hth[7] - hth[15]))))
htv[7] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) - ((hth[2] - hth[10]) - (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) - (hth[5] - hth[13])) - ((hth[3] - hth[11]) - (hth[7] - hth[15]))))


htv_0 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_1 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_2 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_3 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_4 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_5 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_6 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
htv_7 = ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));


// JUNTANDO 

    assign htv_0 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_1 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_2 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_3 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) + ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) + ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) + ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) + ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_4 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_5 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) +  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) +  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_6 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
            :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) + ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));
    assign htv_7 = (~sel) ? 
        ((({{n{hth_0[10]}},hth_0} + {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } + {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } + {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } + {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } + {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 }+ {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } + {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } + {{n{hth_15[10]}},hth_15 })))
                :
        ((({{n{hth_0[10]}},hth_0} - {{n{hth_8[10]}},hth_8 }) - ({{n{hth_4[10]}},hth_4 } - {{n{hth_12[10]}},hth_12})) -  (({{n{hth_2[10]}},hth_2 } - {{n{hth_10[10]}}, hth_10}) - ({{n{hth_6[10]}},hth_6 } - {{n{hth_14[10]}},hth_14 }))) - ((({{n{hth_1[10]}}, hth_1 } - {{n{hth_9[10]}},hth_9 }) - ({{n{hth_5[10]}},hth_5 } - {{n{hth_13[10]}},hth_13 })) -  (({{n{hth_3[10]}},hth_3 } - {{n{hth_11[10]}},hth_11 }) - ({{n{hth_7[10]}},hth_7 } - {{n{hth_15[10]}},hth_15 })));






//////========================

//O temido buffer socorro


module buffer(

    );
endmodule

module buffer #(parameter LENGTH = 0, parameter WIDTH = 0, parameter HEIGHT = 0) 
   (input clk,
    input rst,
    input ena,
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
    
//////////
    assign buffer_0_input[0] = sel ? from_hth_0 : buffer_0_input[0]; 
    assign buffer_0_input[1] = sel ? from_hth_1 : buffer_0_input[1]; 
    assign buffer_0_input[2] = sel ? from_hth_2 : buffer_0_input[2]; 
    assign buffer_0_input[3] = sel ? from_hth_3 : buffer_0_input[3]; 
    assign buffer_0_input[4] = sel ? from_hth_4 : buffer_0_input[4]; 
    assign buffer_0_input[5] = sel ? from_hth_5 : buffer_0_input[5]; 
    assign buffer_0_input[6] = sel ? from_hth_6 : buffer_0_input[6]; 
    assign buffer_0_input[7] = sel ? from_hth_7 : buffer_0_input[7]; 

    assign buffer_1_input[0] = ~sel ? from_hth_0 : buffer_1_input[0]; 
    assign buffer_1_input[1] = ~sel ? from_hth_1 : buffer_1_input[1]; 
    assign buffer_1_input[2] = ~sel ? from_hth_2 : buffer_1_input[2]; 
    assign buffer_1_input[3] = ~sel ? from_hth_3 : buffer_1_input[3]; 
    assign buffer_1_input[4] = ~sel ? from_hth_4 : buffer_1_input[4]; 
    assign buffer_1_input[5] = ~sel ? from_hth_5 : buffer_1_input[5]; 
    assign buffer_1_input[6] = ~sel ? from_hth_6 : buffer_1_input[6]; 
    assign buffer_1_input[7] = ~sel ? from_hth_7 : buffer_1_input[7]; 



    assign to_htv_0  = ~sel ? buffer_0[0][0]  : buffer_1[0][0];  
    assign to_htv_1  = ~sel ? buffer_0[1][0]  : buffer_1[1][0];  
    assign to_htv_2  = ~sel ? buffer_0[2][0]  : buffer_1[2][0];  
    assign to_htv_3  = ~sel ? buffer_0[3][0]  : buffer_1[3][0];  
    assign to_htv_4  = ~sel ? buffer_0[4][0]  : buffer_1[4][0];  
    assign to_htv_5  = ~sel ? buffer_0[5][0]  : buffer_1[5][0];  
    assign to_htv_6  = ~sel ? buffer_0[6][0]  : buffer_1[6][0];  
    assign to_htv_7  = ~sel ? buffer_0[7][0]  : buffer_1[7][0];  
    assign to_htv_8  = ~sel ? buffer_0[8][0]  : buffer_1[8][0];  
    assign to_htv_9  = ~sel ? buffer_0[9][0]  : buffer_1[9][0];  
    assign to_htv_10 = ~sel ? buffer_0[10][0] : buffer_1[10][0];  
    assign to_htv_11 = ~sel ? buffer_0[11][0] : buffer_1[11][0];  
    assign to_htv_12 = ~sel ? buffer_0[12][0] : buffer_1[12][0];  
    assign to_htv_13 = ~sel ? buffer_0[13][0] : buffer_1[13][0];  
    assign to_htv_14 = ~sel ? buffer_0[14][0] : buffer_1[14][0];  
    assign to_htv_15 = ~sel ? buffer_0[15][0] : buffer_1[15][0];  

            buffer_0[0][0] <= buffer_0_input[0]; 
            buffer_0[0][1] <= buffer_0_input[1]; 
            buffer_0[0][2] <= buffer_0_input[2]; 
            buffer_0[0][3] <= buffer_0_input[3]; 
            buffer_0[0][4] <= buffer_0_input[4]; 
            buffer_0[0][5] <= buffer_0_input[5]; 
            buffer_0[0][6] <= buffer_0_input[6]; 
            buffer_0[0][7] <= buffer_0_input[7]; 

            buffer_1[0][0] <= buffer_1_input[0]; 
            buffer_1[0][1] <= buffer_1_input[1]; 
            buffer_1[0][2] <= buffer_1_input[2]; 
            buffer_1[0][3] <= buffer_1_input[3]; 
            buffer_1[0][4] <= buffer_1_input[4]; 
            buffer_1[0][5] <= buffer_1_input[5]; 
            buffer_1[0][6] <= buffer_1_input[6]; 
            buffer_1[0][7] <= buffer_1_input[7];


    assign buffer_0_input[0] = sel ? from_hth_0 : ~sel? buffer_0_input[0] : buffer_0_input[0]; 
    assign buffer_0_input[1] = sel ? from_hth_1 : ~sel? buffer_0_input[1] : buffer_0_input[1]; 
    assign buffer_0_input[2] = sel ? from_hth_2 : ~sel? buffer_0_input[2] : buffer_0_input[2]; 
    assign buffer_0_input[3] = sel ? from_hth_3 : ~sel? buffer_0_input[3] : buffer_0_input[3]; 
    assign buffer_0_input[4] = sel ? from_hth_4 : ~sel? buffer_0_input[4] : buffer_0_input[4]; 
    assign buffer_0_input[5] = sel ? from_hth_5 : ~sel? buffer_0_input[5] : buffer_0_input[5]; 
    assign buffer_0_input[6] = sel ? from_hth_6 : ~sel? buffer_0_input[6] : buffer_0_input[6]; 
    assign buffer_0_input[7] = sel ? from_hth_7 : ~sel? buffer_0_input[7] : buffer_0_input[7]; 


    assign buffer_1_input[0] = ~sel ? from_hth_0 : sel? buffer_1_input[0] : buffer_1_input[0]; 
    assign buffer_1_input[1] = ~sel ? from_hth_1 : sel? buffer_1_input[1] : buffer_1_input[1]; 
    assign buffer_1_input[2] = ~sel ? from_hth_2 : sel? buffer_1_input[2] : buffer_1_input[2]; 
    assign buffer_1_input[3] = ~sel ? from_hth_3 : sel? buffer_1_input[3] : buffer_1_input[3]; 
    assign buffer_1_input[4] = ~sel ? from_hth_4 : sel? buffer_1_input[4] : buffer_1_input[4]; 
    assign buffer_1_input[5] = ~sel ? from_hth_5 : sel? buffer_1_input[5] : buffer_1_input[5]; 
    assign buffer_1_input[6] = ~sel ? from_hth_6 : sel? buffer_1_input[6] : buffer_1_input[6]; 
    assign buffer_1_input[7] = ~sel ? from_hth_7 : sel? buffer_1_input[7] : buffer_1_input[7]; 

    // shift
        buffer_0[15][0] <= buffer_0[14][0];
        buffer_0[15][1] <= buffer_0[14][1];
        buffer_0[15][2] <= buffer_0[14][2];
        buffer_0[15][3] <= buffer_0[14][3];
        buffer_0[15][4] <= buffer_0[14][4];
        buffer_0[15][5] <= buffer_0[14][5];
        buffer_0[15][6] <= buffer_0[14][6];
        buffer_0[15][7] <= buffer_0[14][7];

        buffer_0[14][0] <= buffer_0[13][0];
        buffer_0[14][1] <= buffer_0[13][1];
        buffer_0[14][2] <= buffer_0[13][2];
        buffer_0[14][3] <= buffer_0[13][3];
        buffer_0[14][4] <= buffer_0[13][4];
        buffer_0[14][5] <= buffer_0[13][5];
        buffer_0[14][6] <= buffer_0[13][6];
        buffer_0[14][7] <= buffer_0[13][7];

        buffer_0[13][0] <= buffer_0[12][0];
        buffer_0[13][1] <= buffer_0[12][1];
        buffer_0[13][2] <= buffer_0[12][2];
        buffer_0[13][3] <= buffer_0[12][3];
        buffer_0[13][4] <= buffer_0[12][4];
        buffer_0[13][5] <= buffer_0[12][5];
        buffer_0[13][6] <= buffer_0[12][6];
        buffer_0[13][7] <= buffer_0[12][7];

        buffer_0[12][0] <= buffer_0[11][0];
        buffer_0[12][1] <= buffer_0[11][1];
        buffer_0[12][2] <= buffer_0[11][2];
        buffer_0[12][3] <= buffer_0[11][3];
        buffer_0[12][4] <= buffer_0[11][4];
        buffer_0[12][5] <= buffer_0[11][5];
        buffer_0[12][6] <= buffer_0[11][6];
        buffer_0[12][7] <= buffer_0[11][7];

        buffer_0[11][0] <= buffer_0[10][0];
        buffer_0[11][1] <= buffer_0[10][1];
        buffer_0[11][2] <= buffer_0[10][2];
        buffer_0[11][3] <= buffer_0[10][3];
        buffer_0[11][4] <= buffer_0[10][4];
        buffer_0[11][5] <= buffer_0[10][5];
        buffer_0[11][6] <= buffer_0[10][6];
        buffer_0[11][7] <= buffer_0[10][7];

        buffer_0[10][0] <= buffer_0[9][0];
        buffer_0[10][1] <= buffer_0[9][1];
        buffer_0[10][2] <= buffer_0[9][2];
        buffer_0[10][3] <= buffer_0[9][3];
        buffer_0[10][4] <= buffer_0[9][4];
        buffer_0[10][5] <= buffer_0[9][5];
        buffer_0[10][6] <= buffer_0[9][6];
        buffer_0[10][7] <= buffer_0[9][7];

        buffer_0[9][0] <= buffer_0[8][0];
        buffer_0[9][1] <= buffer_0[8][1];
        buffer_0[9][2] <= buffer_0[8][2];
        buffer_0[9][3] <= buffer_0[8][3];
        buffer_0[9][4] <= buffer_0[8][4];
        buffer_0[9][5] <= buffer_0[8][5];
        buffer_0[9][6] <= buffer_0[8][6];
        buffer_0[9][7] <= buffer_0[8][7];

        buffer_0[8][0] <= buffer_0[7][0];
        buffer_0[8][1] <= buffer_0[7][1];
        buffer_0[8][2] <= buffer_0[7][2];
        buffer_0[8][3] <= buffer_0[7][3];
        buffer_0[8][4] <= buffer_0[7][4];
        buffer_0[8][5] <= buffer_0[7][5];
        buffer_0[8][6] <= buffer_0[7][6];
        buffer_0[8][7] <= buffer_0[7][7];

        buffer_0[7][0] <= buffer_0[6][0];
        buffer_0[7][1] <= buffer_0[6][1];
        buffer_0[7][2] <= buffer_0[6][2];
        buffer_0[7][3] <= buffer_0[6][3];
        buffer_0[7][4] <= buffer_0[6][4];
        buffer_0[7][5] <= buffer_0[6][5];
        buffer_0[7][6] <= buffer_0[6][6];
        buffer_0[7][7] <= buffer_0[6][7];

        buffer_0[6][0] <= buffer_0[5][0];
        buffer_0[6][1] <= buffer_0[5][1];
        buffer_0[6][2] <= buffer_0[5][2];
        buffer_0[6][3] <= buffer_0[5][3];
        buffer_0[6][4] <= buffer_0[5][4];
        buffer_0[6][5] <= buffer_0[5][5];
        buffer_0[6][6] <= buffer_0[5][6];
        buffer_0[6][7] <= buffer_0[5][7];

        buffer_0[5][0] <= buffer_0[4][0];
        buffer_0[5][1] <= buffer_0[4][1];
        buffer_0[5][2] <= buffer_0[4][2];
        buffer_0[5][3] <= buffer_0[4][3];
        buffer_0[5][4] <= buffer_0[4][4];
        buffer_0[5][5] <= buffer_0[4][5];
        buffer_0[5][6] <= buffer_0[4][6];
        buffer_0[5][7] <= buffer_0[4][7];

        buffer_0[4][0] <= buffer_0[3][0];
        buffer_0[4][1] <= buffer_0[3][1];
        buffer_0[4][2] <= buffer_0[3][2];
        buffer_0[4][3] <= buffer_0[3][3];
        buffer_0[4][4] <= buffer_0[3][4];
        buffer_0[4][5] <= buffer_0[3][5];
        buffer_0[4][6] <= buffer_0[3][6];
        buffer_0[4][7] <= buffer_0[3][7];

        buffer_0[3][0] <= buffer_0[2][0];
        buffer_0[3][1] <= buffer_0[2][1];
        buffer_0[3][2] <= buffer_0[2][2];
        buffer_0[3][3] <= buffer_0[2][3];
        buffer_0[3][4] <= buffer_0[2][4];
        buffer_0[3][5] <= buffer_0[2][5];
        buffer_0[3][6] <= buffer_0[2][6];
        buffer_0[3][7] <= buffer_0[2][7];

        buffer_0[2][0] <= buffer_0[1][0];
        buffer_0[2][1] <= buffer_0[1][1];
        buffer_0[2][2] <= buffer_0[1][2];
        buffer_0[2][3] <= buffer_0[1][3];
        buffer_0[2][4] <= buffer_0[1][4];
        buffer_0[2][5] <= buffer_0[1][5];
        buffer_0[2][6] <= buffer_0[1][6];
        buffer_0[2][7] <= buffer_0[1][7];

        buffer_0[1][0] <= buffer_0[0][0];
        buffer_0[1][1] <= buffer_0[0][1];
        buffer_0[1][2] <= buffer_0[0][2];
        buffer_0[1][3] <= buffer_0[0][3];
        buffer_0[1][4] <= buffer_0[0][4];
        buffer_0[1][5] <= buffer_0[0][5];
        buffer_0[1][6] <= buffer_0[0][6];
        buffer_0[1][7] <= buffer_0[0][7];

// socorro

         buffer_0[0][6]  <=  buffer_0[0][7];  
         buffer_0[1][6]  <=  buffer_0[1][7];  
         buffer_0[2][6]  <=  buffer_0[2][7];  
         buffer_0[3][6]  <=  buffer_0[3][7];  
         buffer_0[4][6]  <=  buffer_0[4][7];  
         buffer_0[5][6]  <=  buffer_0[5][7];  
         buffer_0[6][6]  <=  buffer_0[6][7];  
         buffer_0[7][6]  <=  buffer_0[7][7];  
         buffer_0[8][6]  <=  buffer_0[8][7];  
         buffer_0[9][6]  <=  buffer_0[9][7];  
        buffer_0[10][6] <=  buffer_0[10][7];  
        buffer_0[11][6] <=  buffer_0[11][7];  
        buffer_0[12][6] <=  buffer_0[12][7];  
        buffer_0[13][6] <=  buffer_0[13][7];  
        buffer_0[14][6] <=  buffer_0[14][7];  
        buffer_0[15][6] <=  buffer_0[15][7];  

         buffer_0[0][5]  <=  buffer_0[0][6];  
         buffer_0[1][5]  <=  buffer_0[1][6];  
         buffer_0[2][5]  <=  buffer_0[2][6];  
         buffer_0[3][5]  <=  buffer_0[3][6];  
         buffer_0[4][5]  <=  buffer_0[4][6];  
         buffer_0[5][5]  <=  buffer_0[5][6];  
         buffer_0[6][5]  <=  buffer_0[6][6];  
         buffer_0[7][5]  <=  buffer_0[7][6];  
         buffer_0[8][5]  <=  buffer_0[8][6];  
         buffer_0[9][5]  <=  buffer_0[9][6];  
        buffer_0[10][5] <=  buffer_0[10][6];  
        buffer_0[11][5] <=  buffer_0[11][6];  
        buffer_0[12][5] <=  buffer_0[12][6];  
        buffer_0[13][5] <=  buffer_0[13][6];  
        buffer_0[14][5] <=  buffer_0[14][6];  
        buffer_0[15][5] <=  buffer_0[15][6];  

         buffer_0[0][4]  <=  buffer_0[0][5];  
         buffer_0[1][4]  <=  buffer_0[1][5];  
         buffer_0[2][4]  <=  buffer_0[2][5];  
         buffer_0[3][4]  <=  buffer_0[3][5];  
         buffer_0[4][4]  <=  buffer_0[4][5];  
         buffer_0[5][4]  <=  buffer_0[5][5];  
         buffer_0[6][4]  <=  buffer_0[6][5];  
         buffer_0[7][4]  <=  buffer_0[7][5];  
         buffer_0[8][4]  <=  buffer_0[8][5];  
         buffer_0[9][4]  <=  buffer_0[9][5];  
        buffer_0[10][4] <=  buffer_0[10][5];  
        buffer_0[11][4] <=  buffer_0[11][5];  
        buffer_0[12][4] <=  buffer_0[12][5];  
        buffer_0[13][4] <=  buffer_0[13][5];  
        buffer_0[14][4] <=  buffer_0[14][5];  
        buffer_0[15][4] <=  buffer_0[15][5];  

         buffer_0[0][3]  <=  buffer_0[0][4];  
         buffer_0[1][3]  <=  buffer_0[1][4];  
         buffer_0[2][3]  <=  buffer_0[2][4];  
         buffer_0[3][3]  <=  buffer_0[3][4];  
         buffer_0[4][3]  <=  buffer_0[4][4];  
         buffer_0[5][3]  <=  buffer_0[5][4];  
         buffer_0[6][3]  <=  buffer_0[6][4];  
         buffer_0[7][3]  <=  buffer_0[7][4];  
         buffer_0[8][3]  <=  buffer_0[8][4];  
         buffer_0[9][3]  <=  buffer_0[9][4];  
        buffer_0[10][3] <=  buffer_0[10][4];  
        buffer_0[11][3] <=  buffer_0[11][4];  
        buffer_0[12][3] <=  buffer_0[12][4];  
        buffer_0[13][3] <=  buffer_0[13][4];  
        buffer_0[14][3] <=  buffer_0[14][4];  
        buffer_0[15][3] <=  buffer_0[15][4];  

         buffer_0[0][2]  <=  buffer_0[0][3];  
         buffer_0[1][2]  <=  buffer_0[1][3];  
         buffer_0[2][2]  <=  buffer_0[2][3];  
         buffer_0[3][2]  <=  buffer_0[3][3];  
         buffer_0[4][2]  <=  buffer_0[4][3];  
         buffer_0[5][2]  <=  buffer_0[5][3];  
         buffer_0[6][2]  <=  buffer_0[6][3];  
         buffer_0[7][2]  <=  buffer_0[7][3];  
         buffer_0[8][2]  <=  buffer_0[8][3];  
         buffer_0[9][2]  <=  buffer_0[9][3];  
        buffer_0[10][2] <=  buffer_0[10][3];  
        buffer_0[11][2] <=  buffer_0[11][3];  
        buffer_0[12][2] <=  buffer_0[12][3];  
        buffer_0[13][2] <=  buffer_0[13][3];  
        buffer_0[14][2] <=  buffer_0[14][3];  
        buffer_0[15][2] <=  buffer_0[15][3];  

         buffer_0[0][1]  <=  buffer_0[0][2];  
         buffer_0[1][1]  <=  buffer_0[1][2];  
         buffer_0[2][1]  <=  buffer_0[2][2];  
         buffer_0[3][1]  <=  buffer_0[3][2];  
         buffer_0[4][1]  <=  buffer_0[4][2];  
         buffer_0[5][1]  <=  buffer_0[5][2];  
         buffer_0[6][1]  <=  buffer_0[6][2];  
         buffer_0[7][1]  <=  buffer_0[7][2];  
         buffer_0[8][1]  <=  buffer_0[8][2];  
         buffer_0[9][1]  <=  buffer_0[9][2];  
        buffer_0[10][1] <=  buffer_0[10][2];  
        buffer_0[11][1] <=  buffer_0[11][2];  
        buffer_0[12][1] <=  buffer_0[12][2];  
        buffer_0[13][1] <=  buffer_0[13][2];  
        buffer_0[14][1] <=  buffer_0[14][2];  
        buffer_0[15][1] <=  buffer_0[15][2];  

         buffer_0[0][0]  <=  buffer_0[0][1];  
         buffer_0[1][0]  <=  buffer_0[1][1];  
         buffer_0[2][0]  <=  buffer_0[2][1];  
         buffer_0[3][0]  <=  buffer_0[3][1];  
         buffer_0[4][0]  <=  buffer_0[4][1];  
         buffer_0[5][0]  <=  buffer_0[5][1];  
         buffer_0[6][0]  <=  buffer_0[6][1];  
         buffer_0[7][0]  <=  buffer_0[7][1];  
         buffer_0[8][0]  <=  buffer_0[8][1];  
         buffer_0[9][0]  <=  buffer_0[9][1];  
        buffer_0[10][0] <=  buffer_0[10][1];  
        buffer_0[11][0] <=  buffer_0[11][1];  
        buffer_0[12][0] <=  buffer_0[12][1];  
        buffer_0[13][0] <=  buffer_0[13][1];  
        buffer_0[14][0] <=  buffer_0[14][1];  
        buffer_0[15][0] <=  buffer_0[15][1];  
//===============

        buffer_0[0][6]  <=  buffer_0[0][7];  
        buffer_0[1][6]  <=  buffer_0[1][7];  
        buffer_0[2][6]  <=  buffer_0[2][7];  
        buffer_0[3][6]  <=  buffer_0[3][7];  
        buffer_0[4][6]  <=  buffer_0[4][7];  
        buffer_0[5][6]  <=  buffer_0[5][7];  
        buffer_0[6][6]  <=  buffer_0[6][7];  
        buffer_0[7][6]  <=  buffer_0[7][7];  
        buffer_0[8][6]  <=  buffer_0[8][7];  
        buffer_0[9][6]  <=  buffer_0[9][7];  
        buffer_0[10][6] <=  buffer_0[10][7];  
        buffer_0[11][6] <=  buffer_0[11][7];  
        buffer_0[12][6] <=  buffer_0[12][7];  
        buffer_0[13][6] <=  buffer_0[13][7];  
        buffer_0[14][6] <=  buffer_0[14][7];  
        buffer_0[15][6] <=  buffer_0[15][7];  
        buffer_0[0][5]  <=  buffer_0[0][6];  
        buffer_0[1][5]  <=  buffer_0[1][6];  
        buffer_0[2][5]  <=  buffer_0[2][6];  
        buffer_0[3][5]  <=  buffer_0[3][6];  
        buffer_0[4][5]  <=  buffer_0[4][6];  
        buffer_0[5][5]  <=  buffer_0[5][6];  
        buffer_0[6][5]  <=  buffer_0[6][6];  
        buffer_0[7][5]  <=  buffer_0[7][6];  
        buffer_0[8][5]  <=  buffer_0[8][6];  
        buffer_0[9][5]  <=  buffer_0[9][6];  
        buffer_0[10][5] <=  buffer_0[10][6];  
        buffer_0[11][5] <=  buffer_0[11][6];  
        buffer_0[12][5] <=  buffer_0[12][6];  
        buffer_0[13][5] <=  buffer_0[13][6];  
        buffer_0[14][5] <=  buffer_0[14][6];  
        buffer_0[15][5] <=  buffer_0[15][6];  
        buffer_0[0][4]  <=  buffer_0[0][5];  
        buffer_0[1][4]  <=  buffer_0[1][5];  
        buffer_0[2][4]  <=  buffer_0[2][5];  
        buffer_0[3][4]  <=  buffer_0[3][5];  
        buffer_0[4][4]  <=  buffer_0[4][5];  
        buffer_0[5][4]  <=  buffer_0[5][5];  
        buffer_0[6][4]  <=  buffer_0[6][5];  
        buffer_0[7][4]  <=  buffer_0[7][5];  
        buffer_0[8][4]  <=  buffer_0[8][5];  
        buffer_0[9][4]  <=  buffer_0[9][5];  
        buffer_0[10][4] <=  buffer_0[10][5];  
        buffer_0[11][4] <=  buffer_0[11][5];  
        buffer_0[12][4] <=  buffer_0[12][5];  
        buffer_0[13][4] <=  buffer_0[13][5];  
        buffer_0[14][4] <=  buffer_0[14][5];  
        buffer_0[15][4] <=  buffer_0[15][5];  
        buffer_0[0][3]  <=  buffer_0[0][4];  
        buffer_0[1][3]  <=  buffer_0[1][4];  
        buffer_0[2][3]  <=  buffer_0[2][4];  
        buffer_0[3][3]  <=  buffer_0[3][4];  
        buffer_0[4][3]  <=  buffer_0[4][4];  
        buffer_0[5][3]  <=  buffer_0[5][4];  
        buffer_0[6][3]  <=  buffer_0[6][4];  
        buffer_0[7][3]  <=  buffer_0[7][4];  
        buffer_0[8][3]  <=  buffer_0[8][4];  
        buffer_0[9][3]  <=  buffer_0[9][4];  
        buffer_0[10][3] <=  buffer_0[10][4];  
        buffer_0[11][3] <=  buffer_0[11][4];  
        buffer_0[12][3] <=  buffer_0[12][4];  
        buffer_0[13][3] <=  buffer_0[13][4];  
        buffer_0[14][3] <=  buffer_0[14][4];  
        buffer_0[15][3] <=  buffer_0[15][4];  
        buffer_0[0][2]  <=  buffer_0[0][3];  
        buffer_0[1][2]  <=  buffer_0[1][3];  
        buffer_0[2][2]  <=  buffer_0[2][3];  
        buffer_0[3][2]  <=  buffer_0[3][3];  
        buffer_0[4][2]  <=  buffer_0[4][3];  
        buffer_0[5][2]  <=  buffer_0[5][3];  
        buffer_0[6][2]  <=  buffer_0[6][3];  
        buffer_0[7][2]  <=  buffer_0[7][3];  
        buffer_0[8][2]  <=  buffer_0[8][3];  
        buffer_0[9][2]  <=  buffer_0[9][3];  
        buffer_0[10][2] <=  buffer_0[10][3];  
        buffer_0[11][2] <=  buffer_0[11][3];  
        buffer_0[12][2] <=  buffer_0[12][3];  
        buffer_0[13][2] <=  buffer_0[13][3];  
        buffer_0[14][2] <=  buffer_0[14][3];  
        buffer_0[15][2] <=  buffer_0[15][3];  
        buffer_0[0][1]  <=  buffer_0[0][2];  
        buffer_0[1][1]  <=  buffer_0[1][2];  
        buffer_0[2][1]  <=  buffer_0[2][2];  
        buffer_0[3][1]  <=  buffer_0[3][2];  
        buffer_0[4][1]  <=  buffer_0[4][2];  
        buffer_0[5][1]  <=  buffer_0[5][2];  
        buffer_0[6][1]  <=  buffer_0[6][2];  
        buffer_0[7][1]  <=  buffer_0[7][2];  
        buffer_0[8][1]  <=  buffer_0[8][2];  
        buffer_0[9][1]  <=  buffer_0[9][2];  
        buffer_0[10][1] <=  buffer_0[10][2];  
        buffer_0[11][1] <=  buffer_0[11][2];  
        buffer_0[12][1] <=  buffer_0[12][2];  
        buffer_0[13][1] <=  buffer_0[13][2];  
        buffer_0[14][1] <=  buffer_0[14][2];  
        buffer_0[15][1] <=  buffer_0[15][2];  
        buffer_0[0][0]  <=  buffer_0[0][1];  
        buffer_0[1][0]  <=  buffer_0[1][1];  
        buffer_0[2][0]  <=  buffer_0[2][1];  
        buffer_0[3][0]  <=  buffer_0[3][1];  
        buffer_0[4][0]  <=  buffer_0[4][1];  
        buffer_0[5][0]  <=  buffer_0[5][1];  
        buffer_0[6][0]  <=  buffer_0[6][1];  
        buffer_0[7][0]  <=  buffer_0[7][1];  
        buffer_0[8][0]  <=  buffer_0[8][1];  
        buffer_0[9][0]  <=  buffer_0[9][1];  
        buffer_0[10][0] <=  buffer_0[10][1];  
        buffer_0[11][0] <=  buffer_0[11][1];  
        buffer_0[12][0] <=  buffer_0[12][1];  
        buffer_0[13][0] <=  buffer_0[13][1];  
        buffer_0[14][0] <=  buffer_0[14][1];  
        buffer_0[15][0] <=  buffer_0[15][1];  

//real oficial REAL
    always @(posedge clk) begin    
        if (sel[0]) begin
            buffer_0[15][0] <= buffer_0[14][0];
            buffer_0[15][1] <= buffer_0[14][1];
            buffer_0[15][2] <= buffer_0[14][2];
            buffer_0[15][3] <= buffer_0[14][3];
            buffer_0[15][4] <= buffer_0[14][4];
            buffer_0[15][5] <= buffer_0[14][5];
            buffer_0[15][6] <= buffer_0[14][6];
            buffer_0[15][7] <= buffer_0[14][7];
     
            buffer_0[14][0] <= buffer_0[13][0];
            buffer_0[14][1] <= buffer_0[13][1];
            buffer_0[14][2] <= buffer_0[13][2];
            buffer_0[14][3] <= buffer_0[13][3];
            buffer_0[14][4] <= buffer_0[13][4];
            buffer_0[14][5] <= buffer_0[13][5];
            buffer_0[14][6] <= buffer_0[13][6];
            buffer_0[14][7] <= buffer_0[13][7];
     
            buffer_0[13][0] <= buffer_0[12][0];
            buffer_0[13][1] <= buffer_0[12][1];
            buffer_0[13][2] <= buffer_0[12][2];
            buffer_0[13][3] <= buffer_0[12][3];
            buffer_0[13][4] <= buffer_0[12][4];
            buffer_0[13][5] <= buffer_0[12][5];
            buffer_0[13][6] <= buffer_0[12][6];
            buffer_0[13][7] <= buffer_0[12][7];
     
            buffer_0[12][0] <= buffer_0[11][0];
            buffer_0[12][1] <= buffer_0[11][1];
            buffer_0[12][2] <= buffer_0[11][2];
            buffer_0[12][3] <= buffer_0[11][3];
            buffer_0[12][4] <= buffer_0[11][4];
            buffer_0[12][5] <= buffer_0[11][5];
            buffer_0[12][6] <= buffer_0[11][6];
            buffer_0[12][7] <= buffer_0[11][7];
     
            buffer_0[11][0] <= buffer_0[10][0];
            buffer_0[11][1] <= buffer_0[10][1];
            buffer_0[11][2] <= buffer_0[10][2];
            buffer_0[11][3] <= buffer_0[10][3];
            buffer_0[11][4] <= buffer_0[10][4];
            buffer_0[11][5] <= buffer_0[10][5];
            buffer_0[11][6] <= buffer_0[10][6];
            buffer_0[11][7] <= buffer_0[10][7];
     
            buffer_0[10][0] <= buffer_0[9][0];
            buffer_0[10][1] <= buffer_0[9][1];
            buffer_0[10][2] <= buffer_0[9][2];
            buffer_0[10][3] <= buffer_0[9][3];
            buffer_0[10][4] <= buffer_0[9][4];
            buffer_0[10][5] <= buffer_0[9][5];
            buffer_0[10][6] <= buffer_0[9][6];
            buffer_0[10][7] <= buffer_0[9][7];
     
            buffer_0[9][0] <= buffer_0[8][0];
            buffer_0[9][1] <= buffer_0[8][1];
            buffer_0[9][2] <= buffer_0[8][2];
            buffer_0[9][3] <= buffer_0[8][3];
            buffer_0[9][4] <= buffer_0[8][4];
            buffer_0[9][5] <= buffer_0[8][5];
            buffer_0[9][6] <= buffer_0[8][6];
            buffer_0[9][7] <= buffer_0[8][7];
     
            buffer_0[8][0] <= buffer_0[7][0];
            buffer_0[8][1] <= buffer_0[7][1];
            buffer_0[8][2] <= buffer_0[7][2];
            buffer_0[8][3] <= buffer_0[7][3];
            buffer_0[8][4] <= buffer_0[7][4];
            buffer_0[8][5] <= buffer_0[7][5];
            buffer_0[8][6] <= buffer_0[7][6];
            buffer_0[8][7] <= buffer_0[7][7];
     
            buffer_0[7][0] <= buffer_0[6][0];
            buffer_0[7][1] <= buffer_0[6][1];
            buffer_0[7][2] <= buffer_0[6][2];
            buffer_0[7][3] <= buffer_0[6][3];
            buffer_0[7][4] <= buffer_0[6][4];
            buffer_0[7][5] <= buffer_0[6][5];
            buffer_0[7][6] <= buffer_0[6][6];
            buffer_0[7][7] <= buffer_0[6][7];
     
            buffer_0[6][0] <= buffer_0[5][0];
            buffer_0[6][1] <= buffer_0[5][1];
            buffer_0[6][2] <= buffer_0[5][2];
            buffer_0[6][3] <= buffer_0[5][3];
            buffer_0[6][4] <= buffer_0[5][4];
            buffer_0[6][5] <= buffer_0[5][5];
            buffer_0[6][6] <= buffer_0[5][6];
            buffer_0[6][7] <= buffer_0[5][7];
     
            buffer_0[5][0] <= buffer_0[4][0];
            buffer_0[5][1] <= buffer_0[4][1];
            buffer_0[5][2] <= buffer_0[4][2];
            buffer_0[5][3] <= buffer_0[4][3];
            buffer_0[5][4] <= buffer_0[4][4];
            buffer_0[5][5] <= buffer_0[4][5];
            buffer_0[5][6] <= buffer_0[4][6];
            buffer_0[5][7] <= buffer_0[4][7];
     
            buffer_0[4][0] <= buffer_0[3][0];
            buffer_0[4][1] <= buffer_0[3][1];
            buffer_0[4][2] <= buffer_0[3][2];
            buffer_0[4][3] <= buffer_0[3][3];
            buffer_0[4][4] <= buffer_0[3][4];
            buffer_0[4][5] <= buffer_0[3][5];
            buffer_0[4][6] <= buffer_0[3][6];
            buffer_0[4][7] <= buffer_0[3][7];
     
            buffer_0[3][0] <= buffer_0[2][0];
            buffer_0[3][1] <= buffer_0[2][1];
            buffer_0[3][2] <= buffer_0[2][2];
            buffer_0[3][3] <= buffer_0[2][3];
            buffer_0[3][4] <= buffer_0[2][4];
            buffer_0[3][5] <= buffer_0[2][5];
            buffer_0[3][6] <= buffer_0[2][6];
            buffer_0[3][7] <= buffer_0[2][7];
     
            buffer_0[2][0] <= buffer_0[1][0];
            buffer_0[2][1] <= buffer_0[1][1];
            buffer_0[2][2] <= buffer_0[1][2];
            buffer_0[2][3] <= buffer_0[1][3];
            buffer_0[2][4] <= buffer_0[1][4];
            buffer_0[2][5] <= buffer_0[1][5];
            buffer_0[2][6] <= buffer_0[1][6];
            buffer_0[2][7] <= buffer_0[1][7];
       
            buffer_0[1][0] <= buffer_0[0][0];
            buffer_0[1][1] <= buffer_0[0][1];
            buffer_0[1][2] <= buffer_0[0][2];
            buffer_0[1][3] <= buffer_0[0][3];
            buffer_0[1][4] <= buffer_0[0][4];
            buffer_0[1][5] <= buffer_0[0][5];
            buffer_0[1][6] <= buffer_0[0][6];
            buffer_0[1][7] <= buffer_0[0][7];
              
            buffer_0[0][0] <= buffer_0_input[0]; 
            buffer_0[0][1] <= buffer_0_input[1]; 
            buffer_0[0][2] <= buffer_0_input[2]; 
            buffer_0[0][3] <= buffer_0_input[3]; 
            buffer_0[0][4] <= buffer_0_input[4]; 
            buffer_0[0][5] <= buffer_0_input[5]; 
            buffer_0[0][6] <= buffer_0_input[6]; 
            buffer_0[0][7] <= buffer_0_input[7];        
            
            if(sel[1]) begin
                buffer_1[0][6]  <=  buffer_1[0][7];  
                buffer_1[1][6]  <=  buffer_1[1][7];  
                buffer_1[2][6]  <=  buffer_1[2][7];  
                buffer_1[3][6]  <=  buffer_1[3][7];  
                buffer_1[4][6]  <=  buffer_1[4][7];  
                buffer_1[5][6]  <=  buffer_1[5][7];  
                buffer_1[6][6]  <=  buffer_1[6][7];  
                buffer_1[7][6]  <=  buffer_1[7][7];  
                buffer_1[8][6]  <=  buffer_1[8][7];  
                buffer_1[9][6]  <=  buffer_1[9][7];  
                buffer_1[10][6] <=  buffer_1[10][7];  
                buffer_1[11][6] <=  buffer_1[11][7];  
                buffer_1[12][6] <=  buffer_1[12][7];  
                buffer_1[13][6] <=  buffer_1[13][7];  
                buffer_1[14][6] <=  buffer_1[14][7];  
                buffer_1[15][6] <=  buffer_1[15][7];  
        
                buffer_1[0][5]  <=  buffer_1[0][6];  
                buffer_1[1][5]  <=  buffer_1[1][6];  
                buffer_1[2][5]  <=  buffer_1[2][6];  
                buffer_1[3][5]  <=  buffer_1[3][6];  
                buffer_1[4][5]  <=  buffer_1[4][6];  
                buffer_1[5][5]  <=  buffer_1[5][6];  
                buffer_1[6][5]  <=  buffer_1[6][6];  
                buffer_1[7][5]  <=  buffer_1[7][6];  
                buffer_1[8][5]  <=  buffer_1[8][6];  
                buffer_1[9][5]  <=  buffer_1[9][6];  
                buffer_1[10][5] <=  buffer_1[10][6];  
                buffer_1[11][5] <=  buffer_1[11][6];  
                buffer_1[12][5] <=  buffer_1[12][6];  
                buffer_1[13][5] <=  buffer_1[13][6];  
                buffer_1[14][5] <=  buffer_1[14][6];  
                buffer_1[15][5] <=  buffer_1[15][6];  
        
                buffer_1[0][4]  <=  buffer_1[0][5];  
                buffer_1[1][4]  <=  buffer_1[1][5];  
                buffer_1[2][4]  <=  buffer_1[2][5];  
                buffer_1[3][4]  <=  buffer_1[3][5];  
                buffer_1[4][4]  <=  buffer_1[4][5];  
                buffer_1[5][4]  <=  buffer_1[5][5];  
                buffer_1[6][4]  <=  buffer_1[6][5];  
                buffer_1[7][4]  <=  buffer_1[7][5];  
                buffer_1[8][4]  <=  buffer_1[8][5];  
                buffer_1[9][4]  <=  buffer_1[9][5];  
                buffer_1[10][4] <=  buffer_1[10][5];  
                buffer_1[11][4] <=  buffer_1[11][5];  
                buffer_1[12][4] <=  buffer_1[12][5];  
                buffer_1[13][4] <=  buffer_1[13][5];  
                buffer_1[14][4] <=  buffer_1[14][5];  
                buffer_1[15][4] <=  buffer_1[15][5];  

                buffer_1[0][3]  <=  buffer_1[0][4];  
                buffer_1[1][3]  <=  buffer_1[1][4];  
                buffer_1[2][3]  <=  buffer_1[2][4];  
                buffer_1[3][3]  <=  buffer_1[3][4];  
                buffer_1[4][3]  <=  buffer_1[4][4];  
                buffer_1[5][3]  <=  buffer_1[5][4];  
                buffer_1[6][3]  <=  buffer_1[6][4];  
                buffer_1[7][3]  <=  buffer_1[7][4];  
                buffer_1[8][3]  <=  buffer_1[8][4];  
                buffer_1[9][3]  <=  buffer_1[9][4];  
                buffer_1[10][3] <=  buffer_1[10][4];  
                buffer_1[11][3] <=  buffer_1[11][4];  
                buffer_1[12][3] <=  buffer_1[12][4];  
                buffer_1[13][3] <=  buffer_1[13][4];  
                buffer_1[14][3] <=  buffer_1[14][4];  
                buffer_1[15][3] <=  buffer_1[15][4];  
        
                buffer_1[0][2]  <=  buffer_1[0][3];  
                buffer_1[1][2]  <=  buffer_1[1][3];  
                buffer_1[2][2]  <=  buffer_1[2][3];  
                buffer_1[3][2]  <=  buffer_1[3][3];  
                buffer_1[4][2]  <=  buffer_1[4][3];  
                buffer_1[5][2]  <=  buffer_1[5][3];  
                buffer_1[6][2]  <=  buffer_1[6][3];  
                buffer_1[7][2]  <=  buffer_1[7][3];  
                buffer_1[8][2]  <=  buffer_1[8][3];  
                buffer_1[9][2]  <=  buffer_1[9][3];  
                buffer_1[10][2] <=  buffer_1[10][3];  
                buffer_1[11][2] <=  buffer_1[11][3];  
                buffer_1[12][2] <=  buffer_1[12][3];  
                buffer_1[13][2] <=  buffer_1[13][3];  
                buffer_1[14][2] <=  buffer_1[14][3];  
                buffer_1[15][2] <=  buffer_1[15][3];  
        
                buffer_1[0][1]  <=  buffer_1[0][2];  
                buffer_1[1][1]  <=  buffer_1[1][2];  
                buffer_1[2][1]  <=  buffer_1[2][2];  
                buffer_1[3][1]  <=  buffer_1[3][2];  
                buffer_1[4][1]  <=  buffer_1[4][2];  
                buffer_1[5][1]  <=  buffer_1[5][2];  
                buffer_1[6][1]  <=  buffer_1[6][2];  
                buffer_1[7][1]  <=  buffer_1[7][2];  
                buffer_1[8][1]  <=  buffer_1[8][2];  
                buffer_1[9][1]  <=  buffer_1[9][2];  
                buffer_1[10][1] <=  buffer_1[10][2];  
                buffer_1[11][1] <=  buffer_1[11][2];  
                buffer_1[12][1] <=  buffer_1[12][2];  
                buffer_1[13][1] <=  buffer_1[13][2];  
                buffer_1[14][1] <=  buffer_1[14][2];  
                buffer_1[15][1] <=  buffer_1[15][2];  
        
                buffer_1[0][0]  <=  buffer_1[0][1];  
                buffer_1[1][0]  <=  buffer_1[1][1];  
                buffer_1[2][0]  <=  buffer_1[2][1];  
                buffer_1[3][0]  <=  buffer_1[3][1];  
                buffer_1[4][0]  <=  buffer_1[4][1];  
                buffer_1[5][0]  <=  buffer_1[5][1];  
                buffer_1[6][0]  <=  buffer_1[6][1];  
                buffer_1[7][0]  <=  buffer_1[7][1];  
                buffer_1[8][0]  <=  buffer_1[8][1];  
                buffer_1[9][0]  <=  buffer_1[9][1];  
                buffer_1[10][0] <=  buffer_1[10][1];  
                buffer_1[11][0] <=  buffer_1[11][1];  
                buffer_1[12][0] <=  buffer_1[12][1];  
                buffer_1[13][0] <=  buffer_1[13][1];  
                buffer_1[14][0] <=  buffer_1[14][1];  
                buffer_1[15][0] <=  buffer_1[15][1];  
            end
               
        end 
     
        if(~sel[0]) begin
            buffer_1[15][0] <= buffer_1[14][0];
            buffer_1[15][1] <= buffer_1[14][1];
            buffer_1[15][2] <= buffer_1[14][2];
            buffer_1[15][3] <= buffer_1[14][3];
            buffer_1[15][4] <= buffer_1[14][4];
            buffer_1[15][5] <= buffer_1[14][5];
            buffer_1[15][6] <= buffer_1[14][6];
            buffer_1[15][7] <= buffer_1[14][7];
     
            buffer_1[14][0] <= buffer_1[13][0];
            buffer_1[14][1] <= buffer_1[13][1];
            buffer_1[14][2] <= buffer_1[13][2];
            buffer_1[14][3] <= buffer_1[13][3];
            buffer_1[14][4] <= buffer_1[13][4];
            buffer_1[14][5] <= buffer_1[13][5];
            buffer_1[14][6] <= buffer_1[13][6];
            buffer_1[14][7] <= buffer_1[13][7];
     
            buffer_1[13][0] <= buffer_1[12][0];
            buffer_1[13][1] <= buffer_1[12][1];
            buffer_1[13][2] <= buffer_1[12][2];
            buffer_1[13][3] <= buffer_1[12][3];
            buffer_1[13][4] <= buffer_1[12][4];
            buffer_1[13][5] <= buffer_1[12][5];
            buffer_1[13][6] <= buffer_1[12][6];
            buffer_1[13][7] <= buffer_1[12][7];
     
            buffer_1[12][0] <= buffer_1[11][0];
            buffer_1[12][1] <= buffer_1[11][1];
            buffer_1[12][2] <= buffer_1[11][2];
            buffer_1[12][3] <= buffer_1[11][3];
            buffer_1[12][4] <= buffer_1[11][4];
            buffer_1[12][5] <= buffer_1[11][5];
            buffer_1[12][6] <= buffer_1[11][6];
            buffer_1[12][7] <= buffer_1[11][7];
     
            buffer_1[11][0] <= buffer_1[10][0];
            buffer_1[11][1] <= buffer_1[10][1];
            buffer_1[11][2] <= buffer_1[10][2];
            buffer_1[11][3] <= buffer_1[10][3];
            buffer_1[11][4] <= buffer_1[10][4];
            buffer_1[11][5] <= buffer_1[10][5];
            buffer_1[11][6] <= buffer_1[10][6];
            buffer_1[11][7] <= buffer_1[10][7];
     
            buffer_1[10][0] <= buffer_1[9][0];
            buffer_1[10][1] <= buffer_1[9][1];
            buffer_1[10][2] <= buffer_1[9][2];
            buffer_1[10][3] <= buffer_1[9][3];
            buffer_1[10][4] <= buffer_1[9][4];
            buffer_1[10][5] <= buffer_1[9][5];
            buffer_1[10][6] <= buffer_1[9][6];
            buffer_1[10][7] <= buffer_1[9][7];
     
            buffer_1[9][0] <= buffer_1[8][0];
            buffer_1[9][1] <= buffer_1[8][1];
            buffer_1[9][2] <= buffer_1[8][2];
            buffer_1[9][3] <= buffer_1[8][3];
            buffer_1[9][4] <= buffer_1[8][4];
            buffer_1[9][5] <= buffer_1[8][5];
            buffer_1[9][6] <= buffer_1[8][6];
            buffer_1[9][7] <= buffer_1[8][7];
     
            buffer_1[8][0] <= buffer_1[7][0];
            buffer_1[8][1] <= buffer_1[7][1];
            buffer_1[8][2] <= buffer_1[7][2];
            buffer_1[8][3] <= buffer_1[7][3];
            buffer_1[8][4] <= buffer_1[7][4];
            buffer_1[8][5] <= buffer_1[7][5];
            buffer_1[8][6] <= buffer_1[7][6];
            buffer_1[8][7] <= buffer_1[7][7];
     
            buffer_1[7][0] <= buffer_1[6][0];
            buffer_1[7][1] <= buffer_1[6][1];
            buffer_1[7][2] <= buffer_1[6][2];
            buffer_1[7][3] <= buffer_1[6][3];
            buffer_1[7][4] <= buffer_1[6][4];
            buffer_1[7][5] <= buffer_1[6][5];
            buffer_1[7][6] <= buffer_1[6][6];
            buffer_1[7][7] <= buffer_1[6][7];
     
            buffer_1[6][0] <= buffer_1[5][0];
            buffer_1[6][1] <= buffer_1[5][1];
            buffer_1[6][2] <= buffer_1[5][2];
            buffer_1[6][3] <= buffer_1[5][3];
            buffer_1[6][4] <= buffer_1[5][4];
            buffer_1[6][5] <= buffer_1[5][5];
            buffer_1[6][6] <= buffer_1[5][6];
            buffer_1[6][7] <= buffer_1[5][7];
     
            buffer_1[5][0] <= buffer_1[4][0];
            buffer_1[5][1] <= buffer_1[4][1];
            buffer_1[5][2] <= buffer_1[4][2];
            buffer_1[5][3] <= buffer_1[4][3];
            buffer_1[5][4] <= buffer_1[4][4];
            buffer_1[5][5] <= buffer_1[4][5];
            buffer_1[5][6] <= buffer_1[4][6];
            buffer_1[5][7] <= buffer_1[4][7];
     
            buffer_1[4][0] <= buffer_1[3][0];
            buffer_1[4][1] <= buffer_1[3][1];
            buffer_1[4][2] <= buffer_1[3][2];
            buffer_1[4][3] <= buffer_1[3][3];
            buffer_1[4][4] <= buffer_1[3][4];
            buffer_1[4][5] <= buffer_1[3][5];
            buffer_1[4][6] <= buffer_1[3][6];
            buffer_1[4][7] <= buffer_1[3][7];
     
            buffer_1[3][0] <= buffer_1[2][0];
            buffer_1[3][1] <= buffer_1[2][1];
            buffer_1[3][2] <= buffer_1[2][2];
            buffer_1[3][3] <= buffer_1[2][3];
            buffer_1[3][4] <= buffer_1[2][4];
            buffer_1[3][5] <= buffer_1[2][5];
            buffer_1[3][6] <= buffer_1[2][6];
            buffer_1[3][7] <= buffer_1[2][7];
     
            buffer_1[2][0] <= buffer_1[1][0];
            buffer_1[2][1] <= buffer_1[1][1];
            buffer_1[2][2] <= buffer_1[1][2];
            buffer_1[2][3] <= buffer_1[1][3];
            buffer_1[2][4] <= buffer_1[1][4];
            buffer_1[2][5] <= buffer_1[1][5];
            buffer_1[2][6] <= buffer_1[1][6];
            buffer_1[2][7] <= buffer_1[1][7];
       
            buffer_1[1][0] <= buffer_1[0][0];
            buffer_1[1][1] <= buffer_1[0][1];
            buffer_1[1][2] <= buffer_1[0][2];
            buffer_1[1][3] <= buffer_1[0][3];
            buffer_1[1][4] <= buffer_1[0][4];
            buffer_1[1][5] <= buffer_1[0][5];
            buffer_1[1][6] <= buffer_1[0][6];
            buffer_1[1][7] <= buffer_1[0][7];   
    
            buffer_1[0][0] <= buffer_1_input[0]; 
            buffer_1[0][1] <= buffer_1_input[1]; 
            buffer_1[0][2] <= buffer_1_input[2]; 
            buffer_1[0][3] <= buffer_1_input[3]; 
            buffer_1[0][4] <= buffer_1_input[4]; 
            buffer_1[0][5] <= buffer_1_input[5]; 
            buffer_1[0][6] <= buffer_1_input[6]; 
            buffer_1[0][7] <= buffer_1_input[7]; 
            
            if(sel[1]) begin

                buffer_0[0][6]  <=  buffer_0[0][7];  
                buffer_0[1][6]  <=  buffer_0[1][7];  
                buffer_0[2][6]  <=  buffer_0[2][7];  
                buffer_0[3][6]  <=  buffer_0[3][7];  
                buffer_0[4][6]  <=  buffer_0[4][7];  
                buffer_0[5][6]  <=  buffer_0[5][7];  
                buffer_0[6][6]  <=  buffer_0[6][7];  
                buffer_0[7][6]  <=  buffer_0[7][7];  
                buffer_0[8][6]  <=  buffer_0[8][7];  
                buffer_0[9][6]  <=  buffer_0[9][7];  
                buffer_0[10][6] <=  buffer_0[10][7];  
                buffer_0[11][6] <=  buffer_0[11][7];  
                buffer_0[12][6] <=  buffer_0[12][7];  
                buffer_0[13][6] <=  buffer_0[13][7];  
                buffer_0[14][6] <=  buffer_0[14][7];  
                buffer_0[15][6] <=  buffer_0[15][7];  
        
                buffer_0[0][5]  <=  buffer_0[0][6];  
                buffer_0[1][5]  <=  buffer_0[1][6];  
                buffer_0[2][5]  <=  buffer_0[2][6];  
                buffer_0[3][5]  <=  buffer_0[3][6];  
                buffer_0[4][5]  <=  buffer_0[4][6];  
                buffer_0[5][5]  <=  buffer_0[5][6];  
                buffer_0[6][5]  <=  buffer_0[6][6];  
                buffer_0[7][5]  <=  buffer_0[7][6];  
                buffer_0[8][5]  <=  buffer_0[8][6];  
                buffer_0[9][5]  <=  buffer_0[9][6];  
                buffer_0[10][5] <=  buffer_0[10][6];  
                buffer_0[11][5] <=  buffer_0[11][6];  
                buffer_0[12][5] <=  buffer_0[12][6];  
                buffer_0[13][5] <=  buffer_0[13][6];  
                buffer_0[14][5] <=  buffer_0[14][6];  
                buffer_0[15][5] <=  buffer_0[15][6];  
        
                buffer_0[0][4]  <=  buffer_0[0][5];  
                buffer_0[1][4]  <=  buffer_0[1][5];  
                buffer_0[2][4]  <=  buffer_0[2][5];  
                buffer_0[3][4]  <=  buffer_0[3][5];  
                buffer_0[4][4]  <=  buffer_0[4][5];  
                buffer_0[5][4]  <=  buffer_0[5][5];  
                buffer_0[6][4]  <=  buffer_0[6][5];  
                buffer_0[7][4]  <=  buffer_0[7][5];  
                buffer_0[8][4]  <=  buffer_0[8][5];  
                buffer_0[9][4]  <=  buffer_0[9][5];  
                buffer_0[10][4] <=  buffer_0[10][5];  
                buffer_0[11][4] <=  buffer_0[11][5];  
                buffer_0[12][4] <=  buffer_0[12][5];  
                buffer_0[13][4] <=  buffer_0[13][5];  
                buffer_0[14][4] <=  buffer_0[14][5];  
                buffer_0[15][4] <=  buffer_0[15][5];  
        
                buffer_0[0][3]  <=  buffer_0[0][4];  
                buffer_0[1][3]  <=  buffer_0[1][4];  
                buffer_0[2][3]  <=  buffer_0[2][4];  
                buffer_0[3][3]  <=  buffer_0[3][4];  
                buffer_0[4][3]  <=  buffer_0[4][4];  
                buffer_0[5][3]  <=  buffer_0[5][4];  
                buffer_0[6][3]  <=  buffer_0[6][4];  
                buffer_0[7][3]  <=  buffer_0[7][4];  
                buffer_0[8][3]  <=  buffer_0[8][4];  
                buffer_0[9][3]  <=  buffer_0[9][4];  
                buffer_0[10][3] <=  buffer_0[10][4];  
                buffer_0[11][3] <=  buffer_0[11][4];  
                buffer_0[12][3] <=  buffer_0[12][4];  
                buffer_0[13][3] <=  buffer_0[13][4];  
                buffer_0[14][3] <=  buffer_0[14][4];  
                buffer_0[15][3] <=  buffer_0[15][4];  
        
                buffer_0[0][2]  <=  buffer_0[0][3];  
                buffer_0[1][2]  <=  buffer_0[1][3];  
                buffer_0[2][2]  <=  buffer_0[2][3];  
                buffer_0[3][2]  <=  buffer_0[3][3];  
                buffer_0[4][2]  <=  buffer_0[4][3];  
                buffer_0[5][2]  <=  buffer_0[5][3];  
                buffer_0[6][2]  <=  buffer_0[6][3];  
                buffer_0[7][2]  <=  buffer_0[7][3];  
                buffer_0[8][2]  <=  buffer_0[8][3];  
                buffer_0[9][2]  <=  buffer_0[9][3];  
                buffer_0[10][2] <=  buffer_0[10][3];  
                buffer_0[11][2] <=  buffer_0[11][3];  
                buffer_0[12][2] <=  buffer_0[12][3];  
                buffer_0[13][2] <=  buffer_0[13][3];  
                buffer_0[14][2] <=  buffer_0[14][3];  
                buffer_0[15][2] <=  buffer_0[15][3];  
        
                buffer_0[0][1]  <=  buffer_0[0][2];  
                buffer_0[1][1]  <=  buffer_0[1][2];  
                buffer_0[2][1]  <=  buffer_0[2][2];  
                buffer_0[3][1]  <=  buffer_0[3][2];  
                buffer_0[4][1]  <=  buffer_0[4][2];  
                buffer_0[5][1]  <=  buffer_0[5][2];  
                buffer_0[6][1]  <=  buffer_0[6][2];  
                buffer_0[7][1]  <=  buffer_0[7][2];  
                buffer_0[8][1]  <=  buffer_0[8][2];  
                buffer_0[9][1]  <=  buffer_0[9][2];  
                buffer_0[10][1] <=  buffer_0[10][2];  
                buffer_0[11][1] <=  buffer_0[11][2];  
                buffer_0[12][1] <=  buffer_0[12][2];  
                buffer_0[13][1] <=  buffer_0[13][2];  
                buffer_0[14][1] <=  buffer_0[14][2];  
                buffer_0[15][1] <=  buffer_0[15][2];  
        
                buffer_0[0][0]  <=  buffer_0[0][1];  
                buffer_0[1][0]  <=  buffer_0[1][1];  
                buffer_0[2][0]  <=  buffer_0[2][1];  
                buffer_0[3][0]  <=  buffer_0[3][1];  
                buffer_0[4][0]  <=  buffer_0[4][1];  
                buffer_0[5][0]  <=  buffer_0[5][1];  
                buffer_0[6][0]  <=  buffer_0[6][1];  
                buffer_0[7][0]  <=  buffer_0[7][1];  
                buffer_0[8][0]  <=  buffer_0[8][1];  
                buffer_0[9][0]  <=  buffer_0[9][1];  
                buffer_0[10][0] <=  buffer_0[10][1];  
                buffer_0[11][0] <=  buffer_0[11][1];  
                buffer_0[12][0] <=  buffer_0[12][1];  
                buffer_0[13][0] <=  buffer_0[13][1];  
                buffer_0[14][0] <=  buffer_0[14][1];  
                buffer_0[15][0] <=  buffer_0[15][1];  
            end
        end
    end


//arrumando sel

    assign buffer_0_input[0] = sel[0] ? from_hth_0 : ~sel[0]? buffer_0_input[0] : buffer_0_input[0]; 
    assign buffer_0_input[1] = sel[0] ? from_hth_1 : ~sel[0]? buffer_0_input[1] : buffer_0_input[1]; 
    assign buffer_0_input[2] = sel[0] ? from_hth_2 : ~sel[0]? buffer_0_input[2] : buffer_0_input[2]; 
    assign buffer_0_input[3] = sel[0] ? from_hth_3 : ~sel[0]? buffer_0_input[3] : buffer_0_input[3]; 
    assign buffer_0_input[4] = sel[0] ? from_hth_4 : ~sel[0]? buffer_0_input[4] : buffer_0_input[4]; 
    assign buffer_0_input[5] = sel[0] ? from_hth_5 : ~sel[0]? buffer_0_input[5] : buffer_0_input[5]; 
    assign buffer_0_input[6] = sel[0] ? from_hth_6 : ~sel[0]? buffer_0_input[6] : buffer_0_input[6]; 
    assign buffer_0_input[7] = sel[0] ? from_hth_7 : ~sel[0]? buffer_0_input[7] : buffer_0_input[7]; 
 

    assign buffer_1_input[0] = ~sel[0] ? from_hth_0 : sel[0]? buffer_1_input[0] : buffer_1_input[0]; 
    assign buffer_1_input[1] = ~sel[0] ? from_hth_1 : sel[0]? buffer_1_input[1] : buffer_1_input[1]; 
    assign buffer_1_input[2] = ~sel[0] ? from_hth_2 : sel[0]? buffer_1_input[2] : buffer_1_input[2]; 
    assign buffer_1_input[3] = ~sel[0] ? from_hth_3 : sel[0]? buffer_1_input[3] : buffer_1_input[3]; 
    assign buffer_1_input[4] = ~sel[0] ? from_hth_4 : sel[0]? buffer_1_input[4] : buffer_1_input[4]; 
    assign buffer_1_input[5] = ~sel[0] ? from_hth_5 : sel[0]? buffer_1_input[5] : buffer_1_input[5]; 
    assign buffer_1_input[6] = ~sel[0] ? from_hth_6 : sel[0]? buffer_1_input[6] : buffer_1_input[6]; 
    assign buffer_1_input[7] = ~sel[0] ? from_hth_7 : sel[0]? buffer_1_input[7] : buffer_1_input[7]; 
    
    assign to_htv_0  = ~sel[0] ? buffer_0[0][0]  : buffer_1[0][0];  
    assign to_htv_1  = ~sel[0] ? buffer_0[1][0]  : buffer_1[1][0];  
    assign to_htv_2  = ~sel[0] ? buffer_0[2][0]  : buffer_1[2][0];  
    assign to_htv_3  = ~sel[0] ? buffer_0[3][0]  : buffer_1[3][0];  
    assign to_htv_4  = ~sel[0] ? buffer_0[4][0]  : buffer_1[4][0];  
    assign to_htv_5  = ~sel[0] ? buffer_0[5][0]  : buffer_1[5][0];  
    assign to_htv_6  = ~sel[0] ? buffer_0[6][0]  : buffer_1[6][0];  
    assign to_htv_7  = ~sel[0] ? buffer_0[7][0]  : buffer_1[7][0];  
    assign to_htv_8  = ~sel[0] ? buffer_0[8][0]  : buffer_1[8][0];  
    assign to_htv_9  = ~sel[0] ? buffer_0[9][0]  : buffer_1[9][0];  
    assign to_htv_10 = ~sel[0] ? buffer_0[10][0] : buffer_1[10][0];  
    assign to_htv_11 = ~sel[0] ? buffer_0[11][0] : buffer_1[11][0];  
    assign to_htv_12 = ~sel[0] ? buffer_0[12][0] : buffer_1[12][0];  
    assign to_htv_13 = ~sel[0] ? buffer_0[13][0] : buffer_1[13][0];  
    assign to_htv_14 = ~sel[0] ? buffer_0[14][0] : buffer_1[14][0];  
    assign to_htv_15 = ~sel[0] ? buffer_0[15][0] : buffer_1[15][0];  
    
    //

    from_hth_0 = 15'b000001001101001; //617
    from_hth_1 = 15'b000010111011001; //1497
    from_hth_2 = 15'b000000111010011; //467
    from_hth_3 = 15'b000000011100111; //231
    from_hth_4 = 15'b000100110001001; //2441 
    from_hth_5 = 15'b000110000101101; //3117
    from_hth_6 = 15'b111011000111011; //-2501
    from_hth_7 = 15'b110111100111011; //-4293
    
    #5

    from_hth_0 = 15'b000000100000011 //259
    from_hth_1 = 15'b000000100001011 //267
    from_hth_2 = 15'b110011101010011 //-6319
    from_hth_3 = 15'b000101101111101 //2941
    from_hth_4 = 15'b111111101011111 //-161
    from_hth_5 = 15'b000000001000011 //67
    from_hth_6 = 15'b000110100101101 //3373
    from_hth_7 = 15'b111011111101101 //-2067
    
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
    

    assign diff_0 = (ORG[(LENGTH)-1:0]   		  - CUR[(LENGTH)-1:0]);
    assign diff_1 = (ORG[(2*LENGTH)-1:(LENGTH)]   - CUR[(2*LENGTH)-1:(LENGTH)]);
    assign diff_2 = (ORG[(3*LENGTH)-1:(2*LENGTH)] - CUR[(3*LENGTH)-1:(2*LENGTH)]);
    assign diff_3 = (ORG[(4*LENGTH)-1:(3*LENGTH)] - CUR[(4*LENGTH)-1:(3*LENGTH)]);
    assign diff_4 = (ORG[(5*LENGTH)-1:(4*LENGTH)] - CUR[(5*LENGTH)-1:(4*LENGTH)]);
    assign diff_5 = (ORG[(6*LENGTH)-1:(5*LENGTH)] - CUR[(6*LENGTH)-1:(5*LENGTH)]);
    assign diff_6 = (ORG[(7*LENGTH)-1:(6*LENGTH)] - CUR[(7*LENGTH)-1:(6*LENGTH)]);
    assign diff_7 = (ORG[(8*LENGTH)-1:(7*LENGTH)] - CUR[(8*LENGTH)-1:(7*LENGTH)]);


    // wires
	wire signed [WIDTH:0] diff_result_0;
    wire signed [WIDTH:0] diff_result_1;
    wire signed [WIDTH:0] diff_result_2;
    wire signed [WIDTH:0] diff_result_3;
    wire signed [WIDTH:0] diff_result_4;
    wire signed [WIDTH:0] diff_result_5;
    wire signed [WIDTH:0] diff_result_6;
    wire signed [WIDTH:0] diff_result_7;

    wire signed [(WIDTH+3):0] hth_result_0;
    wire signed [(WIDTH+3):0] hth_result_1;
    wire signed [(WIDTH+3):0] hth_result_2;
    wire signed [(WIDTH+3):0] hth_result_3;
    wire signed [(WIDTH+3):0] hth_result_4;
    wire signed [(WIDTH+3):0] hth_result_5;
    wire signed [(WIDTH+3):0] hth_result_6;
    wire signed [(WIDTH+3):0] hth_result_7;

    wire signed [(WIDTH+7):0] htv_result_0;
    wire signed [(WIDTH+7):0] htv_result_1;
    wire signed [(WIDTH+7):0] htv_result_2;
    wire signed [(WIDTH+7):0] htv_result_3;
    wire signed [(WIDTH+7):0] htv_result_4;
    wire signed [(WIDTH+7):0] htv_result_5;
    wire signed [(WIDTH+7):0] htv_result_6;
    wire signed [(WIDTH+7):0] htv_result_7;


    wire signed [(WIDTH+7):0] buffer_result_0  ;
    wire signed [(WIDTH+7):0] buffer_result_1  ;
    wire signed [(WIDTH+7):0] buffer_result_2  ;
    wire signed [(WIDTH+7):0] buffer_result_3  ;
    wire signed [(WIDTH+7):0] buffer_result_4  ;
    wire signed [(WIDTH+7):0] buffer_result_5  ;
    wire signed [(WIDTH+7):0] buffer_result_6  ;
    wire signed [(WIDTH+7):0] buffer_result_7  ;
    wire signed [(WIDTH+7):0] buffer_result_8  ;
    wire signed [(WIDTH+7):0] buffer_result_9  ;
    wire signed [(WIDTH+7):0] buffer_result_10 ;
    wire signed [(WIDTH+7):0] buffer_result_11 ;
    wire signed [(WIDTH+7):0] buffer_result_12 ;
    wire signed [(WIDTH+7):0] buffer_result_13 ;
    wire signed [(WIDTH+7):0] buffer_result_14 ;
    wire signed [(WIDTH+7):0] buffer_result_15 ;










