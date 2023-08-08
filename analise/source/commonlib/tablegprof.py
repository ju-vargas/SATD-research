import pandas as pd
import numpy as np
from IPython.display import display

def print_table_gprof(matrix,config,labels):     
    print(matrix.get_size())
    aproximations = matrix.get_aproximations()
    aproximations = sorted(aproximations, key=lambda aproximation: aproximation.aprox_type) 

    data = []
    for aprox in aproximations:
        videos = aprox.get_videos() 
        videos = sorted(videos, key=lambda video_l: video_l.name)

        content = []
        for video in videos:             
            for con in video.get_functions(config).keys():
                content.append(con)
        data.append(content)
    data = np.transpose(data)

    #labels
    label_teste = []
    label_videos = []

    for video in videos:
        i = 1
        for function in video.get_functions(config).keys():
            label_videos.append(video.get_name())
            position = str(i) + 'º'
            i = i + 1
            label_teste.append(position)
    
    arrays = [
        np.array(label_videos),
        np.array(label_teste)    
    ]

    df = pd.DataFrame(np.array(data), index=arrays, columns=labels)
    display(df)


    