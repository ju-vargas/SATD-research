class Aproximation:
    def __init__(self, size, aprox_type, path):
        self.size = size
        self.aprox_type = aprox_type
        self.path = path
        self.videos = []

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
