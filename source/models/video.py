import numpy as np
import os
from source.commonlib import metric as metrics
from source.commonlib import vvclog as vlog
from source.models import logvideo as lv

class Video:
    def __init__(self, name, path):
        self.name = name 
        self.path = path
        self.logs_AI = []
        self.logs_RA = []
        self.logs_LB = []
        self.BDRate_AI = None
        self.BDRate_RA = None
        self.BDRate_LB = None
        self.BDPsnr_AI = None
        self.BDPsnr_RA = None
        self.BDPsnr_LB = None
        
        
    #manda os birates do self video, manda os PSNRs do self video
    #manda tambem o Video Precise pra comparar 
    #manda a configuracao pra setar o bdrate correto e pra comparar corretamente o video 
    def set_BDRate(self, config, VideoP):
        match config:
            case "AI":
                self.BDRate_AI = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 1); 
            case "RA":
                self.BDRate_RA = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 1); 
            case "LB":
                self.BDRate_LB = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 1); 
            case _:
                return False  
            
    def get_BDRate(self, config):
        match config:
            case "AI":
                return self.BDRate_AI
            case "RA":
                return self.BDRate_RA 
            case "LB":
                return self.BDRate_LB
            case _:
                return False          
            

    def set_BDPsnr(self, config, VideoP):
        match config:
            case "AI":
                self.BDPsnr_AI = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 0); 
            case "RA":
                self.BDPsnr_RA = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 0); 
            case "LB":
                self.BDPsnr_LB = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 0); 
            case _:
                return False  
            
    def get_BDPsnr(self, config):
        match config:
            case "AI":
                return self.BDPsnr_AI
            case "RA":
                return self.BDPsnr_RA 
            case "LB":
                return self.BDPsnr_LB
            case _:
                return False      
        
    def get_name(self): 
        return self.name

    def get_path(self):
        return self.path
    
    def get_logs(self, config):
        match config:
            case "AI":
                return self.logs_AI
            case "RA":
                return self.logs_RA
            case "LB":
                return self.logs_LB
            case _:
                return False           
            
    def add_logs(self, config):
        path_logs = self.path + config + '/'
        
        #list logs in a specif configuration folder
        logs_list = os.listdir(path_logs)
        
        #fill config logs list
        #percorre os logs e vai preenchendo de acordo com o q ta na pasta 
        for log_item in logs_list:
            qp_item = log_item.split("_")[2]  
            qp_item_n = qp_item.split("p")[1]
            
            log_video = lv.LogVideo(config,qp_item_n, log_item, path_logs)
        
            #aq eu preciso chamar outras funcoes pra preencher o resto dos dados dos logs
            #aquelas funcoes q pegam funcoes mais chamadas, tempo etc ect 
            vlog.get_data_vvc(path_logs + log_item, log_video)
    
            #coloca na lista
            match config:
                case "AI":
                    self.logs_AI.append(log_video)
                case "RA":
                    self.logs_RA.append(log_video)
                case "LB":
                    self.logs_LB.append(log_video) 
                    
    #GET BITRATES  
    #devolve np.array bitrates
    def get_bitrates(self, config):
        Rate1 = []
    
        match config:
            case "AI":
                for log in self.logs_AI:
                    Rate1.append(log.get_bitrate())
                return Rate1
                
            case "RA":
                for log in self.logs_RA:
                    Rate1.append(log.get_bitrate())
                return Rate1

            case "LB":
                for log in self.logs_LB:
                    Rate1.append(log.get_bitrate())
                return Rate1
    
            case _:
                return False   
        
                
    #devolve np.array PSNRs 
    #ver se faz sentido devolver np.array de algo q ja deve ser um array 
    def get_PSNRs(self, config):
        PSNRs = []
        match config:
            case "AI":
                for log in self.logs_AI:
                    PSNRs.append(log.get_PSNR())
                return PSNRs
                
            case "RA":
                for log in self.logs_RA:
                    PSNRs.append(log.get_PSNR())
                return PSNRs

            case "LB":
                for log in self.logs_LB:
                    PSNRs.append(log.get_PSNR())
                return PSNRs

            case _:
                return False   
            
    