class Matrix: 
    def __init__(self, size):
        self.size = size
        self.aprox_list = []
        
    #add a new aprox (-1, -2, -3...)
    def add_aprox(self, aprox):

        #colocar em ordem de nome 
        #e o precise por ultimo 
        self.aprox_list.append(aprox)
        
    def get_aproximations(self):
        return self.aprox_list
    
    def get_size(self):
        return self.size