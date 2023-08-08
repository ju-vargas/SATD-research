class VideoConfig: 
    def __init__(self, type):
        self.type = type
        self.gprof_functions = []
        self.logs = []
        self.BDRate = None
        self.BDPsnr = None 


    #get if is a log for AI, LB or RA configuration
    def get_type(self):
        return self.type 


    #most used functions (sum of QPs)
    #List most used functions in THIS video in THIS especific configuration

    def set_gprof_functions(self, functions):
        self.gprof_functions = functions

    def get_gprof_functions(self):
        return self.gprof_functions

    #logs for this individual video
    def add_log(self, log):
        self.logs.append(log)

    def get_logs(self):
        return self.logs
    

    #Rates calculated for this video using all QPs
    def set_BDRate(self, bdrate):
        self.BDRate = bdrate

    def get_BDRate(self):
        return self.BDRate
    
    def set_BDPsnr(self, bdpsnr):
        self.BDPsnr = bdpsnr

    def get_BDPsnr(self):
        return self.BDPsnr
