import vvcpy as vvcpy
from source.commonlib import pathlist as pl
from source.commonlib import tablegprof as tlprof
from source.models import aproximation as apx
from source.models import matrix as mtx


#dar opção de escolher QUAIS funções que eu quero analisar (de qual classe e tal)
#FUTURAMENTE analise por etapa de codificação
#implementar para etapa
def analise_prof(matrix_size, folder, config):

    print('tesre' + matrix_size)
    matrix = mtx.Matrix(matrix_size)

    print('teste size')
    matrix.get_size()

    aproximations = matrix.get_aproximations()

    labels = []
    for aproximation in aproximations:
        match aproximation.get_type():
            case "Precise":
                labels.append(aproximation.get_type())
            case "sad":
                labels.append("SAD")
            case __ : 
                labels.append("-" + aproximation.get_type())

    labels.sort()
    for aprox in labels:
        if (aprox == 'Precise'):
            labels.remove(aprox)
    labels.append('Precise')   
        
        #videos = aproximation.get_videos()
        #for video in videos:
            #debug 
            #print("Nome: " + video.get_name())
            #video.set_functions(config)

    tlprof.print_table_gprof(matrix,config,labels)



