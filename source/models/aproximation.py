from source.models import mediaconfig as con 

class Aproximation:
    def __init__(self, size, aprox_type, path):
        self.size = size
        self.aprox_type = aprox_type
        self.path = path
        self.videos = []
        self.configs = []

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

        configuration = con.MediaConfig()
        configuration.set_type(config)
        configuration.set_mediaBDRate(media)
        self.configs.append(configuration)

        return False

    def get_media(self, config):
        
        for con in self.configs:
            if(con.get_type() == config):
                return con.get_mediaBDRate()
        return False      


        
     
            

