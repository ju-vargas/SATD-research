import vvc_performance as vvcpy
from source.commonlib import pathlist as pl
from source.commonlib import tablegprof as tlprof
from source.models import aproximation as apx
from source.models import matrix as mtx


#dar opção de escolher QUAIS funções que eu quero analisar (de qual classe e tal)
#FUTURAMENTE analise por etapa de codificação
#implementar para etapa
def analise_prof(matrix, folder, config):
    aproximations = matrix.get_aproximations()

    ##sort labels and columns
    aproximations = sorted(aproximations, key=lambda aproximation: aproximation.aprox_type) 
    
    auxAprox = apx.Aproximation('','','')
    #coloca Precise como ultimo das aproximacoes  
    for aproximation in aproximations:
        if (aproximation.get_type() == 'Precise'):
            auxAprox = aproximation
            aproximations.remove(aproximation)
    aproximations.append(auxAprox)


    labels = []
    for aproximation in aproximations:
        #debug
        #print("Aprox: " + aproximation.get_type())

        labels.append(aproximation.get_type())
        videos = aproximation.get_videos()

        for video in videos:
            #debug 
            #print("Nome: " + video.get_name())
            video.set_functions(config)
           
    #print(labels)
    tlprof.print_table_gprof(matrix,config, labels)



