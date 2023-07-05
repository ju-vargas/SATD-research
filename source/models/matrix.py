import utils.imports

class Matrix: 
    def __init__(self, size):
        self.size = size
        self.aprox_list = []
        
    #add a new aprox (-1, -2, -3...)
    def add_aprox(self, aprox):
        self.aprox_list.append(aprox)
        
    def get_aproximations(self):
        return self.aprox_list
