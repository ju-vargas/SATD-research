import numpy as np
import math as mt
#MATRIX 4x8
#x[coluna][linha]
#x[j][i]
rows = 4
columns = 8
m1 = [[0]*rows for i in range(columns)]
m2 = [[0]*rows for i in range(columns)]

##=============================================
#REGS
##=============================================
REG0 = []
REG1 = []
REG2 = []
REG3 = []
REG4 = []
REG5 = []
REG6 = []
REG7 = []

##=============================================
#DIFFERENCES
##=============================================
diff = []
with open('num.txt', 'r') as file:
    content = file.read()
    numbers = content.replace(',', '').split()
    for number in numbers:
        if number.strip():  
            diff.append(int(number.strip()))

#print(diff)

##=============================================
#HORIZONTAL TRANSFORM
#fazer em 4 ciclos(?)
##=============================================
jj = 0
index = -1
for j in range(4):
    index = index + 1
    jj = index<<2 
    
    m2[index][0] = diff[jj]     + diff[jj + 2]
    m2[index][1] = diff[jj + 1] + diff[jj + 3]
    m2[index][2] = diff[jj]     - diff[jj + 2]
    m2[index][3] = diff[jj + 1] - diff[jj + 3]

    m1[index][0] = m2[index][0] + m2[index][1]
    m1[index][1] = m2[index][0] - m2[index][1]
    m1[index][2] = m2[index][2] + m2[index][3]
    m1[index][3] = m2[index][2] - m2[index][3]

    index = index+1
    jj = index<<2

    m2[index][0] = diff[jj]     + diff[jj + 2]
    m2[index][1] = diff[jj + 1] + diff[jj + 3]
    m2[index][2] = diff[jj]     - diff[jj + 2]
    m2[index][3] = diff[jj + 1] - diff[jj + 3]

    m1[index][0] = m2[index][0] + m2[index][1]
    m1[index][1] = m2[index][0] - m2[index][1]
    m1[index][2] = m2[index][2] + m2[index][3]
    m1[index][3] = m2[index][2] - m2[index][3]
  
m1 = np.array(m1)
print(m1)

##=============================================
#VERTICAL TRANSFORM
#fazer em 4 ciclos(?)
##=============================================
for i in range(4): 
    m2[0][i] = m1[0][i] + m1[4][i]
    m2[1][i] = m1[1][i] + m1[5][i]
    m2[2][i] = m1[2][i] + m1[6][i]
    m2[3][i] = m1[3][i] + m1[7][i]
    m2[4][i] = m1[0][i] - m1[4][i]
    m2[5][i] = m1[1][i] - m1[5][i]
    m2[6][i] = m1[2][i] - m1[6][i]
    m2[7][i] = m1[3][i] - m1[7][i]

    m1[0][i] = m2[0][i] + m2[2][i]
    m1[1][i] = m2[1][i] + m2[3][i]
    m1[2][i] = m2[0][i] - m2[2][i]
    m1[3][i] = m2[1][i] - m2[3][i]
    m1[4][i] = m2[4][i] + m2[6][i]
    m1[5][i] = m2[5][i] + m2[7][i]
    m1[6][i] = m2[4][i] - m2[6][i]
    m1[7][i] = m2[5][i] - m2[7][i]

    m2[0][i] = m1[0][i] + m1[1][i]
    m2[1][i] = m1[0][i] - m1[1][i]
    m2[2][i] = m1[2][i] + m1[3][i]
    m2[3][i] = m1[2][i] - m1[3][i]
    m2[4][i] = m1[4][i] + m1[5][i]
    m2[5][i] = m1[4][i] - m1[5][i]
    m2[6][i] = m1[6][i] + m1[7][i]
    m2[7][i] = m1[6][i] - m1[7][i]

m2 = np.array(m2)
print(m2)