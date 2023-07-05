import utils.imports

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
        
    #TALVEZ nao faca tanto sentido ter isso aqui, desse jeito. mandar o Precise 
    def set_BDRate(self, config, VideoP):
        match config:
            case "AI":
                self.BDRate_AI = calc_bdrate(VideoP, self.get_rates(config), self.get_PSNRs(config), config); 
            case "RA":
                self.BDRate_RA = calc_bdrate(VideoP, self.get_rates(config), self.get_PSNRs(config), config); 
            case "LB":
                self.BDRate_LB = calc_bdrate(VideoP, self.get_rates(config), self.get_PSNRs(config), config); 
            case _:
                return false  
            
    def get_BDRate(self, config):
        match config:
            case "AI":
                return self.BDRate_AI
            case "RA":
                return self.BDRate_RA 
            case "LB":
                return self.BDRate_LB
            case _:
                return false          
        
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
                return false           
            
    def add_logs(self, config):
        path_logs = self.path + config + '/'
        
        #list logs in a specif configuration folder
        logs_list = os.listdir(path_logs)
        
        #fill config logs list
        #percorre os logs e vai preenchendo de acordo com o q ta na pasta 
        for log_item in logs_list:
            qp_item = log_item.split("_")[2]  
            qp_item_n = qp_item.split("p")[1]
            
            log_video = LogVideo(config,qp_item_n, log_item, path_logs)
        
            #aq eu preciso chamar outras funcoes pra preencher o resto dos dados dos logs
            #aquelas funcoes q pegam funcoes mais chamadas, tempo etc ect 
            get_data_vvc(path_logs + log_item, log_video)
    
            #coloca na lista
            match config:
                case "AI":
                    self.logs_AI.append(log_video)
                case "RA":
                    self.logs_RA.append(log_video)
                case "LB":
                    self.logs_LB.append(log_video) 
                    
    def get_rates(self, config):
        Rate1 = []
    
        match config:
            case "AI":
                for log in self.logs_AI:
                    Rate1.append(log.get_bdrate())
                
            case "RA":
                for log in self.logs_RA:
                    Rate1.append(log.get_bdrate())

            case "LB":
                for log in self.logs_LB:
                    Rate1.append(log.get_bdrate())
    
            case _:
                return false   
            
        return np.array(Rate1)
                
    
    def get_PSNRs(self, config):
        PSNRs = []
        match config:
            case "AI":
                for log in self.logs_AI:
                    PSNRs.append(log.get_PSNR())
                
            case "RA":
                for log in self.logs_RA:
                    PSNRs.append(log.get_PSNR())

            case "LB":
                for log in self.logs_LB:
                    PSNRs.append(log.get_PSNR())
            case _:
                return false   
            
        return np.array(PSNRs)
    
