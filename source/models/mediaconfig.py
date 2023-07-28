class MediaConfig:
    def __init__(self):
        self.type = None
        self.mediaBDRate = None

    def set_mediaBDRate(self, media):
        self.mediaBDRate = media

    def get_mediaBDRate(self):
        return self.mediaBDRate
    
    def set_type(self, type):
        self.type = type

    def get_type(self):
        return self.type 
    