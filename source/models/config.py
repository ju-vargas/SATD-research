class Config:
    def __init__(self):
        self.type = None
        self.mediaBDRate = None
        self.gprof_functions = []

    def set_mediaBDRate(self, media):
        self.mediaBDRate = media

    def get_mediaBDRate(self):
        return self.mediaBDRate

    def set_gprof_functions(self, functions):
        self.gprof_functions = functions

    def get_gprof_functions(self):
        return self.gprof_functions
    
    def set_type(self, type):
        self.type = type

    def get_type(self):
        return self.type 
    