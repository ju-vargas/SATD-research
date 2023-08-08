#CLASSES
#class LogFunction: 
class LogVideo:
    def __init__(self, config, qp, name, path):
        self.config = config
        self.QP = qp
        self.name = name
        self.path = path
        self.m_used_functions = []
        self.time = None
        self.bitrate = None
        self.BD_rate = None
        self.PSNR = None
            
    def get_config(self):
        return self.config
            
    def get_QP(self):
        return self.QP
        
    def get_name(self):   
        return self.name
    
    def set_time(self,time):
        self.time = time
       
    def get_time(self):
        return self.time
    
    def get_path(self):
        return self.path
    
    #BITRATE
    def set_bitrate(self, bitrate):
        self.bitrate = bitrate
            
    def get_bitrate(self):
        return self.bitrate
            
    def set_PSNR(self, PSNR):
        self.PSNR = PSNR
            
    def get_PSNR(self):
        return self.PSNR
   
    #BDRATE 
    def set_bdrate(self, bdrate):
        self.BD_rate = bdrate
            
    def get_bdrate(self):
        return self.BD_rate
    
    #Functions
    def set_m_functions(self, m_functions):
        self.m_used_functions = m_functions

    def get_m_functions(self):
        return self.m_used_functions
