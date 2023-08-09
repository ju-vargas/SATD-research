import numpy as np
import random as rd

diff = []
for i in range(32):
    diff.append(rd.randrange(0, 255, 2))
            
#infos
#x[coluna][linha]
#x[j][i]

rows = 4; 
columns = 8; 

m1 = []
m2 = []

for _ in range(rows):
    row = [0] * columns  # Preencha com zeros ou outro valor inicial
    m1.append(row)
    m2.append(row)

#HORIZONTAL
#camada 1 
#pra cada elemento linha da coluna
for j in range(8):
    jj = j + 4 
    m2[j][0] = diff[jj]     + diff[jj + 2]
    m2[j][1] = diff[jj + 1] + diff[jj + 3]
    m2[j][2] = diff[jj]     - diff[jj + 2]
    m2[j][3] = diff[jj + 1] - diff[jj + 3]

#camada 2 
for j in range(8):
    jj = j + 4 
    m1[j][0] = m2[j][0] + m2[j][1]
    m1[j][1] = m2[j][0] - m2[j][1]
    m1[j][2] = m2[j][2] + m2[j][3]
    m1[j][3] = m2[j][2] - m2[j][3]



print(m1[0])
print(m1[1])
print(m1[2])
print(m1[3])


#VERTICAL
#pra cada elemento coluna da linha
#camada 1
for i in range(4): 
    m2[0][i] = m1[0][i] + m1[4][i]
    m2[1][i] = m1[1][i] + m1[5][i]
    m2[2][i] = m1[2][i] + m1[6][i]
    m2[3][i] = m1[3][i] + m1[7][i]
    m2[4][i] = m1[0][i] - m1[4][i]
    m2[5][i] = m1[1][i] - m1[5][i]
    m2[6][i] = m1[2][i] - m1[6][i]
    m2[7][i] = m1[3][i] - m1[7][i]


#camada 2
for i in range(4):
    m1[0][i] = m2[0][i] + m2[2][i]
    m1[1][i] = m2[1][i] + m2[3][i]
    m1[2][i] = m2[0][i] - m2[2][i]
    m1[3][i] = m2[1][i] - m2[3][i]
    m1[4][i] = m2[4][i] + m2[6][i]
    m1[5][i] = m2[5][i] + m2[7][i]
    m1[6][i] = m2[4][i] - m2[6][i]
    m1[7][i] = m2[5][i] - m2[7][i]

#camada 3
for i in range(4):
    m2[0][i] = m1[0][i] + m1[1][i]
    m2[1][i] = m1[0][i] - m1[1][i]
    m2[2][i] = m1[2][i] + m1[3][i]
    m2[3][i] = m1[2][i] - m1[3][i]
    m2[4][i] = m1[4][i] + m1[5][i]
    m2[5][i] = m1[4][i] - m1[5][i]
    m2[6][i] = m1[6][i] + m1[7][i]
    m2[7][i] = m1[6][i] - m1[7][i]


#aqui da pra printar o resultado tambem

#SAV

    