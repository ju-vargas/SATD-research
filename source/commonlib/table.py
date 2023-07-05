import utils.imports


#FUNCTIONS PRINT TABLE

#make the table according the param
def print_table_vvc(matrix, videos, config, check_tags):
    
    aprox_list = []
    aproximations = matrix.get_aproximations()
    for aproximation in aproximations:
        if aproximation.get_type() != "Precise":
            aprox_list.append("-" + aproximation.get_type())
        else: 
            aprox_list.append(aproximation.get_type())
            
    
    videos_list = []
    tags_list = []
    qp_list = []
    
    for video in videos:
        for tag in check_tags:
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
    aprox_list.sort()

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
        data.append(data_column)
    
    data = np.transpose(data)
    
    #display all table
    pd.set_option('display.max_rows', None)
    df = pd.DataFrame(np.array(data), index=arrays, columns=aprox_list)
    display(df)
    
def print_table_gprog():
    return void