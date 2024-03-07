
    
    assign htv_0 = (~sel) ? 
        {hth_0[LENGTH],hth_0} + {hth_8[LENGTH],hth_8} 
    :   
        {hth_0[LENGTH],hth_0} - {hth_8[LENGTH],hth_8} ;  

    assign htv_1 = (~sel) ? 
        {hth_1[LENGTH],hth_1} + {hth_9[LENGTH],hth_9} 
    :
        {hth_1[LENGTH],hth_1} - {hth_9[LENGTH],hth_9} ;

    assign htv_2 = (~sel) ? 
        {hth_2[LENGTH],hth_2} + {hth_10[LENGTH],hth_10}
    :
        {hth_2[LENGTH],hth_2} - {hth_10[LENGTH],hth_10};

    assign htv_3 = (~sel) ? 
        {hth_3[LENGTH],hth_3} + {hth_11[LENGTH],hth_11}
    :
        {hth_3[LENGTH],hth_3} - {hth_11[LENGTH],hth_11};

    assign htv_4 = (~sel) ? 
        {hth_4[LENGTH],hth_4} + {hth_12[LENGTH],hth_12}
    :
        {hth_4[LENGTH],hth_4} - {hth_12[LENGTH],hth_12};

    assign htv_5 = (~sel) ? 
        {hth_5[LENGTH],hth_5} + {hth_13[LENGTH],hth_13}
    :
        {hth_5[LENGTH],hth_5} - {hth_13[LENGTH],hth_13};

    assign htv_6 = (~sel) ? 
        {hth_6[LENGTH],hth_6} + {hth_14[LENGTH],hth_14}
    :
        {hth_6[LENGTH],hth_6} - {hth_14[LENGTH],hth_14};
        
    assign htv_7 = (~sel) ? 
        {hth_7[LENGTH],hth_7} + {hth_15[LENGTH],hth_15}
    :
        {hth_7[LENGTH],hth_7} - {hth_15[LENGTH],hth_15};
