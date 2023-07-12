import numpy as np
import pandas as pd
from IPython.display import display


#FUNCTIONS PRINT TABLE

#make the table according the param
def print_table_vvc(matrix, videos, config, check_tags):
    
    aprox_list = []
    aproximations = matrix.get_aproximations()

    #to correct labels
    #TROCAR pra "swich case"
    for aproximation in aproximations:
        match aproximation.get_type():
            case "Precise":
                aprox_list.append(aproximation.get_type())
            case "sad":
                aprox_list.append("SAD")
            case __ : 
                aprox_list.append("-" + aproximation.get_type())

    
    videos_list = []
    tags_list = []
    qp_list = []
    
    for video in videos:
        for tag in check_tags:
            videos_list.append(video)
            videos_list.append(video)
            videos_list.append(video)
            videos_list.append(video)
        
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

        #teste bdrate
        qp_list.append("")
        tags_list.append("BDRate")

    #aprox_list.sort()

    #index table
    arrays = [
        np.array(videos_list),
        np.array(qp_list),
        np.array(tags_list),
    ]
    
    #content table
    data = []

    for aproximation in aproximations:
        #crio a lista pra aproximacao 
        data_column = []

        #pego os videos da respectiva aproximacao
        aprox_videos =  aproximation.get_videos()
        
        #pra cada video, pego os 4 logs da config escolhida
        logs_list = []
        for video in aprox_videos:
            
            logs_list = video.get_logs(config)
            
            #pra cada log, adiciono os 4 valores na lista 
            for log in logs_list:
                if 'Time' in check_tags:
                    data_column.append(log.get_time())
                
                if "Bitrate" in check_tags:
                    data_column.append(log.get_bitrate())
                
                if "PSNR" in check_tags:
                    data_column.append(log.get_PSNR())                    
        
            #teste bdrate
            #????????????
            #print("aaaaaa")
            #print(video.get_BDRate(config))
            data_column.append(video.get_BDRate(config))

        data.append(data_column)
    
    data = np.transpose(data)
    

    #display all table
    pd.set_option('display.max_rows', None)
    df = pd.DataFrame(np.array(data), index=arrays, columns=aprox_list)
    styled_df2 = df.style.apply(min_color, axis=1)

    display(styled_df2)
    
def print_table_gprof():
    return False

def min_color(s):
    relevant_cells = s.iloc[:-1]

    # Calcula o mínimo das células relevantes
    min_value = relevant_cells.min()

    # Verifica se o mínimo está na última coluna
    if s.iloc[-1] == min_value:
        # Encontra o próximo valor mínimo excluindo a última coluna
        min_value = relevant_cells[relevant_cells != min_value].min()

    # Aplica o estilo às células
    styles = ['background-color: #BDFCB9' if v == min_value else '' for v in s]
    return styles