class Aproximation:
    def __init__(self, size, aprox_type, path):
        self.size = size
        self.aprox_type = aprox_type
        self.path = path
        self.videos = []
        self.mediaBDR_AI = None
        self.mediaBDR_RA = None
        self.mediaBDR_LB = None


    def add_video(self, video):
        self.videos.append(video)
        
    def get_size(self):
        return self.size
    
    def get_type(self):
        return self.aprox_type
    
    def get_path(self):
        return self.path
    
    #returns list
    def get_videos(self):
        return self.videos
    
    #returns a specific video
    def get_video(self, name):
        for video in self.videos:
            if (video.get_name() == name):
                return video
        return False 
    
    def set_media(self, config):
        sum = 0
        media = 0
        count = 0

        for video in self.videos:
            sum = sum + video.get_BDRate(config)
            count = count + 1

        media = (sum/count)

        match config:
            case "AI":
                self.mediaBDR_AI = media
            case "RA":
                self.mediaBDR_RA = media
            case "LB":
                self.mediaBDR_LB = media
            case _:
                return False      

    def get_media(self, config):
        match config:
            case "AI":
                return self.mediaBDR_AI
            case "RA":
                return self.mediaBDR_RA 
            case "LB":
                return self.mediaBDR_LB
            case _:
                return False      


        
     
            

