import numpy as np

def printamatriz(linha, coluna): 
    for i in range(linha):
        for j in range(coluna):
            if(j == coluna - 1):
                print("%4d" %matriz[i][j])
            else:
                print("%4d" %matriz[i][j], end = "")
    print()

def testa():
    print("teste") 
    return

def swap(): 
    for i in range (colunas): 

        for j in range(linhas):
            saida = i + (colunas*j) 

            aux = np.where(aux_array == saida)
            lin_saida = aux[0][0] 
            col_saida = aux[1][0] 

            entrada = j + (linhas*i)
            matriz[lin_saida][col_saida] = entrada





linhas = 8
colunas = 8
matriz = [[0,1,2,3,4,5,6,7],
          [8,9,10,11,12,13,14,15],
          [16,17,18,19,20,21,22,23],
          [24,25,26,27,28,29,30,31],
          [32,33,34,35,36,37,38,39],
          [40,41,42,43,44,45,46,47],
          [48,49,50,51,52,53,54,55],
          [56,57,58,59,60,61,62,63]]


count = 0
index = 0 
valor = 0 

printamatriz(linhas, colunas) 

aux_array = np.array(matriz)
swap()
printamatriz(linhas, colunas) 

