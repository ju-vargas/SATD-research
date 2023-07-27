from source.models import aproximation as apx
from source.models import matrix as mtx
from source.models import video as vd
from source.commonlib import pathlist as pl
from source.commonlib import table as tl
import os

#FUNCTIONS
#returns the analise VVC
def analise(matrix_size, folder, config, check_tags, bd_tags, color_tags):
    
    #new matrix according dropdown
    matrix = mtx.Matrix(matrix_size)
    
    #find all aproximations for the matrix and fill object
    aproximations_list = pl.list_aproximations(matrix_size, "-",folder)

    for aproximation in aproximations_list:
        aprox_type = aproximation.split("-")[2]
        aprox_folder = folder + aproximation + "/"
        
        #new object Aproximation
        aprox = apx.Aproximation(matrix_size, aprox_type, aprox_folder)
        
        #fill aproximation videos list
        videos_list = pl.list_videos(aprox.get_path())
        for item in videos_list:
            video = vd.Video(item, aprox.get_path() + item + '/')  
            
            #fill logs for the video
            configs_list = os.listdir(aprox.get_path() + item + '/')
            for item_config in configs_list:
                video.add_logs(item_config)
            
            aprox.add_video(video)
                    
        #add video to matrix
        matrix.add_aprox(aprox)
        
    #add precise version
    path_precise = folder + "Precise/"
    precise = analise_precise(matrix_size, path_precise,config)
    matrix.add_aprox(precise)
    
    
    #TESTE calculo BDRATE
    aprox_list = matrix.get_aproximations()

    for aprox in aprox_list:
        #print("BDRates da aproximacao: " + aprox.get_type())
    
        videos = aprox.get_videos()
            
        for video in videos:
            VideoP = precise.get_video(video.get_name())
            #DEBUG
            #print("alo")
            #print(VideoP.get_name())
            video.set_BDRate(config, VideoP)
            video.set_BDPsnr(config, VideoP)

            #print(video.get_BDRate(config))
            #print("\n")

    #setando medias de BD Rate das aproximacoes
    #(precise nem tem)
    for aprox in aprox_list:
        aprox.set_media(config)

    tl.print_table_vvc(matrix, videos_list, config, check_tags, bd_tags, color_tags)
    return matrix

    
#analise precise
def analise_precise(matrix_size, folder, config):
    #new object Aproximation
    precise = apx.Aproximation(matrix_size, "Precise", folder)
        
    #fill aproximation videos list
    videos_list = pl.list_videos(precise.get_path())
    for item in videos_list:
        video = vd.Video(item, precise.get_path() + item + '/')  
            
        #fill logs for the video
        configs_list = os.listdir(precise.get_path() + item + '/')
        for item_config in configs_list:
            video.add_logs(item_config)
        precise.add_video(video)
    return precise
                    