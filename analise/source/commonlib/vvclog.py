#FUNCTIONS VVCLOG
def get_data_vvc(file_path, video_log):
    with open(file_path, 'r') as f:
        next = False
        for line in f:
            if "Total Frames" in line:
                next = True
            
            else: 
                if next:
                    data = ((line.strip().split("a")[1]).strip()).split()
                    
                    #teste = data.split()
                    video_log.set_bitrate(float(data[0]))
                    
                    #PSNR YUV(??)
                    video_log.set_PSNR(float(data[4]))

                    next = False
                    
            if "Total Time" in line:
                #elapsed(??)
                time = (line.strip().split()[2])
                video_log.set_time(float(time))