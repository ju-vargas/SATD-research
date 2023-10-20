import vvcpy as vvcpy
import os
from source.commonlib import metric as metrics
from source.commonlib import vvclog as vlog
from source.models import logvideo as lv
from source.models import videoconfig as vc

class Video:
    def __init__(self, name, path):
        self.name = name 
        self.path = path
        self.configs = [vc.VideoConfig('AI'),vc.VideoConfig('LB'),vc.VideoConfig('RA')] 
        
    def get_name(self): 
        return self.name
    
    def get_path(self):
        return self.path

    #for config videos
    def set_BDRate(self, config, VideoP):
        bdrate = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 1); 
        for video_config in self.configs:
            if (video_config.get_type() == config): 
                video_config.set_BDRate(bdrate)
            
    def get_BDRate(self, config):
        for video_config in self.configs:
            if (video_config.get_type() == config): 
                return video_config.get_BDRate()
        return False  
            
    def set_BDPsnr(self, config, VideoP):
        bdpsnr = metrics.calc_rate(VideoP, self.get_bitrates(config), self.get_PSNRs(config), config, 0); 
        for video_config in self.configs:
            if (video_config.get_type() == config): 
                video_config.set_BDPsnr(bdpsnr)
        
    def get_BDPsnr(self, config):
        for video_config in self.configs:
            if (video_config.get_type() == config): 
                return video_config.get_BDPsnr()
        return False  

    def get_logs(self, config):
        for video_config in self.configs:
            if (video_config.get_type() == config): 
                return video_config.get_logs()
        return False        
            
    def add_logs(self, config):
        path_logs = self.path + config + '/'        
        logs_list = os.listdir(path_logs)
        logs_list.sort()
    
        for log_item in logs_list:
            qp_item = log_item.split("_")[2]  
            qp_item_n = qp_item.split("p")[1]
            log_video = lv.LogVideo(config,qp_item_n, log_item, path_logs)
        
            vlog.get_data_vvc(path_logs + log_item, log_video)
    
            for video_config in self.configs:
                if (video_config.get_type() == config): 
                    video_config.add_log(log_video)
                    
    #GET BITRATES  
    def get_bitrates(self, config):
        Rate1 = []
        for video_config in self.configs:
                if (video_config.get_type() == config): 
                    logs = video_config.get_logs()
                    for log in logs:
                        Rate1.append(log.get_bitrate())
                    return Rate1 
        return False   
        
    def get_PSNRs(self, config):
        PSNRs = []
        for video_config in self.configs:
            if (video_config.get_type() == config): 
                logs = video_config.get_logs()
                for log in logs:
                    PSNRs.append(log.get_PSNR())
                return PSNRs 
        return False   
    
    #GPROFILER
    def set_functions(self,config):
        #preenchendo os LOGS de desse video só 
        for log in self.get_logs(config): 
            path = log.get_path() + log.get_name()
            path = path.replace("vvc_log", "gprof_log")
            path = path.replace("vvclog", "gplog")
            
            gprof_test = vvcpy.GprofDF().read_file(path)
            gprof_test = gprof_test.sort_values(by='calls', ascending=False)

            #AQUI q eu mudo qual analise que to fazendo 
            gprof_test = gprof_test[gprof_test['function'].str.contains('xCalcHADs', na = False)].iloc[:, [0,3,7,8,9]]
            functions = gprof_test['function'].tolist()
            log.set_m_functions(functions)


        #fazendo uma lista de mais chamados dos videos de acordo com os logs 
     
        key_functions = []
        value_functions = []
        
        for log in self.get_logs(config):
            list = log.get_m_functions() 

            #print("lista do log", log.get_QP(), ' ', list)
            #for name in list: 
                #print('name:', name)

            if list[0] not in key_functions: 
                key_functions.append(list[0])
                value_functions.append(1)
            
            else:
                #pega o index do nome da lista 
                index = key_functions.index(list[0])
                value = value_functions[index]
                value = value + 1
                value_functions[index] = value

        res = dict(zip(key_functions, value_functions))
        #print('Mais chamadas')
        #print(res)

        for video_config in self.configs:
            if (video_config.get_type() == config): 
                video_config.set_gprof_functions(res)



    def get_functions(self, config):
        for video_config in self.configs:
            if (video_config.get_type() == config):    
                return video_config.get_gprof_functions()
        return False