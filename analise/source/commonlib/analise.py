from source.models import aproximation as apx
from source.models import matrix as mtx
from source.models import video as vd
from source.commonlib import pathlist as pl
from source.commonlib import table as tl
from source.commonlib import tablegprof as tlprof
import os

def analise(type, matrix_size, folder, config, check_tags, bd_tags, color_tags):
    matrix = mtx.Matrix(matrix_size)    

    aproximations_list = pl.list_aproximations(matrix_size, "-",folder)
    for aproximation in aproximations_list:
        aprox_type = aproximation.split("-")[2]
        aprox_folder = folder + aproximation + "/"        
        aprox = apx.Aproximation(matrix_size, aprox_type, aprox_folder)
        
        videos_list = pl.list_videos(aprox.get_path())
        for item in videos_list:
            video = vd.Video(item, aprox.get_path() + item + '/')  

            configs_list = os.listdir(aprox.get_path() + item + '/')        
            for item_config in configs_list:
                video.add_logs(item_config)
            
            aprox.add_video(video)        
        matrix.add_aprox(aprox)

    path_precise = folder + "Precise/"
    precise = analise_precise(matrix_size, path_precise,config)
    matrix.add_aprox(precise)
    
    
    labels = []
    aprox_list = matrix.get_aproximations()
    for aproximation in aprox_list:
        match aproximation.get_type():
            case "Precise":
                labels.append(aproximation.get_type())
            case "sad":
                labels.append("SAD")
            case __ : 
                labels.append("-" + aproximation.get_type())
    labels.sort()
    for aprox in labels:
        if (aprox == 'Precise'):
            labels.remove(aprox)
    labels.append('Precise')   

    if (type == 'vvc'):
        for aprox in aprox_list:    
            videos = aprox.get_videos()
            for video in videos:
                VideoP = precise.get_video(video.get_name())
                video.set_BDRate(config, VideoP)
                video.set_BDPsnr(config, VideoP)                
        for aprox in aprox_list:
            aprox.set_media(config)
        tl.print_table_vvc(matrix, videos_list, config, check_tags, bd_tags, color_tags,labels)

    elif (type == 'gprof'):
        for aprox in aprox_list:    
            videos = aprox.get_videos()
            for video in videos:
                video.set_functions(config)
        tlprof.print_table_gprof(matrix,config,labels)

    return matrix

    
def analise_precise(matrix_size, folder, config):
    precise = apx.Aproximation(matrix_size, "Precise", folder)
        
    videos_list = pl.list_videos(precise.get_path())
    for item in videos_list:
        video = vd.Video(item, precise.get_path() + item + '/')  
        
        configs_list = os.listdir(precise.get_path() + item + '/')
        for item_config in configs_list:
            video.add_logs(item_config)
        precise.add_video(video)

    return precise
                    