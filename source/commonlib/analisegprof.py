import vvc_performance as vvcpy
from IPython.display import display
from source.commonlib import pathlist as pl
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
        labels.append(aproximation.get_type())
        videos = aproximation.get_videos()

        for video in videos:
            logs = video.get_logs(config)

            for log in logs:
                path = log.get_path() + log.get_name()
                path = path.replace("vvc_log", "gprof_log")
                path = path.replace("vvclog", "gplog")

                gprof_test = vvcpy.GprofDF().read_file(path)
                gprof_test = gprof_test.sort_values(by='calls', ascending=False)

                #AQUI q eu mudo qual analise que to fazendo 
                gprof_test = gprof_test[gprof_test['function'].str.contains('xCalcHADs', na = False)].iloc[:, [0,3,7,8,9]]
                functions = gprof_test['function'].tolist()

                log.set_m_functions(functions)
                #print(log.get_m_functions())

    print(labels)



