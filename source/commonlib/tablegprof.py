import pandas as pd
import numpy as np
from IPython.display import display




def print_table_gprof(matrix,config,labels): 
    
    aproximations = matrix.get_aproximations()

    content = []
    teste = []

    for aprox in aproximations:
        print("Aprox: " + aprox.get_type())
    
        videos = aprox.get_videos() 
        for video in videos: 
            print("Nome: " + video.get_name())
            content.append(video.get_functions(config))

        teste.append(content)

        np.transpose(teste)
        
        #videos, labels



    df = pd.DataFrame(np.array(teste), index=videos, columns=labels)
    display(df)


    