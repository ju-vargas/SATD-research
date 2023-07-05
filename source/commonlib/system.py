import utils.imports

#FUNCTIONS SYSTEM
#list all matrices
def list_matrices(terminator, folder):
    items = os.listdir(folder)
    names = []
    for item in items:
        if os.path.isdir(os.path.join(folder, item)):
            prefix = item.split(terminator)[0]  
            if prefix not in names:  
                names.append(prefix)
    return names
    
#list all aproximations of a matrix researched
def list_aproximations(prefix, terminator, folder):
    items = os.listdir(folder)
    names = []
    for item in items:
        if os.path.isdir(os.path.join(folder, item)):
            prefix_item = item.split(terminator)[0]
            if prefix_item == prefix: 
                names.append(item)
    return names
    
    
#list all videos from a aprox folder
def list_videos(aprox_folder):
    videos = os.listdir(aprox_folder)
    return videos