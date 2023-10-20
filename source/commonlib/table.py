import numpy as np
import pandas as pd
from IPython.display import display
from source.models import aproximation as apx
import ipywidgets as widgets

def print_table_vvc(matrix, videos, config, check_tags, bd_tags, color_tags,labels):
    
    aproximations = matrix.get_aproximations()
    #to do indexes
    videos_list = []
    tags_list = []
    qp_list = []
    
    for video in videos:
        for tag in check_tags:
            videos_list.append(video)
            videos_list.append(video)
            videos_list.append(video)
            videos_list.append(video)
        
        if 'BD-Rate' in bd_tags:
            videos_list.append(video)
        if 'BD-PSNR' in bd_tags:
            videos_list.append(video)
        
        for tag in check_tags:
            qp_list.append(22)
        for tag in check_tags:
            tags_list.append(tag)
        for tag in check_tags:
            qp_list.append(27)
        for tag in check_tags:
            tags_list.append(tag)
        for tag in check_tags:
            qp_list.append(32)
        for tag in check_tags:
            tags_list.append(tag)
        for tag in check_tags:
            qp_list.append(37)

        for tag in check_tags:
            tags_list.append(tag)

        if 'BD-Rate' in bd_tags:
            qp_list.append("")
            tags_list.append("BD-Rate")

        if 'BD-PSNR' in bd_tags:
            qp_list.append("")
            tags_list.append("BD-PSNR")

    videos_list.append("")
    qp_list.append("")
    tags_list.append("Media BD-Rate")

    #table index
    arrays = [
        np.array(videos_list),
        np.array(qp_list),
        np.array(tags_list),
    ]
    
    aproximations = sorted(aproximations, key=lambda aproximation: aproximation.aprox_type) 
    auxAprox = apx.Aproximation('','','')
    for aproximation in aproximations:
        if (aproximation.get_type() == 'Precise'):
            auxAprox = aproximation
            aproximations.remove(aproximation)
    aproximations.append(auxAprox)

    #table content
    data = []
    media_data = []
    for aproximation in aproximations:
        media_data.append(aproximation.get_media(config))
        data_column = []
        aprox_videos =  aproximation.get_videos()
        logs_list = []
        for video in aprox_videos:
            logs_list = video.get_logs(config)    

            for log in logs_list:
                if 'Time' in check_tags:
                    data_column.append(log.get_time())
                
                if "Bitrate" in check_tags:
                    data_column.append(log.get_bitrate())
                
                if "PSNR" in check_tags:
                    data_column.append(log.get_PSNR())                    

            if 'BD-Rate' in bd_tags:
                data_column.append(video.get_BDRate(config))
            
            if 'BD-PSNR' in bd_tags:
                data_column.append(video.get_BDPsnr(config))


        #append media
        data_column.append(aproximation.get_media(config))
        data.append(data_column)
        

    data = np.transpose(data)

    #print(media_data)

    #set table
    pd.set_option('display.max_rows', None)
    df = pd.DataFrame(np.array(data), index=arrays, columns=labels)

    print(config)
    print(matrix.get_size())
    #display according color tags
    styled_best = df.style.apply(color_best, axis=1)
    styled_worst = df.style.apply(color_worst, axis=1)
    styled_both = df.style.apply(color_both, axis=1)

    if 'Best values' in color_tags: 
        if 'Worst values' in color_tags:
            display(styled_both)
        else:
            display(styled_best)
    elif 'Worst values' in color_tags:
        display(styled_worst)
    else:
        display(df)


    #styled_media = df_media.style.apply(color_best, axis = 1)
    #display(df, styled_media)
       
    #debug ----
    # if 'PSNR' in check_tags:
    #    print("teste 2")
    #    teste = df.index[0]
    #    print(teste[2])


def styled_best2(s):
    max_value = s[s != 0].max()
    max2 = -1

    if s.iloc[-1] == max_value:
        max2 = max_value
        max_value = -1
    

    styles = ['background-color: #999999'  if v == None else 'background-color: #CBE0CA' if v == max2  else 'background-color: #ABE0A6' if v == max_value else '' for v in s]
    return styles

def color_best(s):
    min_value = s[s != 0].min()
    min2 = -1

    if s.iloc[-1] == min_value:
        min2 = min_value
        min_value = -1
    
    styles = ['background-color: #999999'  if v == None else 'background-color: #60C25B'  if v < 0 and v == min_value else 'background-color: #CBE0CA' if v == min2  else 'background-color: #ABE0A6' if v == min_value else '' for v in s]
    return styles


def color_worst(s):
    max_value = s[s != 0].max()
    max2 = -1

    if s.iloc[-1] == max_value:
        max2 = max_value
        max_value = -1

    styles = ['background-color: #999999'  if v == None else 'background-color: #E3C5C3' if v == max2  else 'background-color: #E68C87' if v == max_value else '' for v in s]    
    return styles


def color_both(s):
    min_value = s[s != 0].min()
    min2 = -1

    if s.iloc[-1] == min_value:
        min2 = min_value
        min_value = -1
    
    max_value = s[s != 0].max()
    max2 = -1

    if s.iloc[-1] == max_value:
        max2 = max_value
        max_value = -1

    styles = ['background-color: #999999'  if v == None else 'background-color: #60C25B'  if v < 0 and v == min_value else 'background-color: #E3C5C3' if v == max2 else 'background-color: #CBE0CA' if v == min2 else 'background-color: #F4998D' if v == max_value else 'background-color: #BDFCB9' if v == min_value else '' for v in s]
    return styles

