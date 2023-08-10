import numpy as np
import math as mt
#MATRIX 4x8
#x[coluna][linha]
#x[j][i]

rows = 4
columns = 8
m1 = [[0]*rows for i in range(columns)]
m2 = [[0]*rows for i in range(columns)]


#differences
diff = []
with open('num.txt', 'r') as file:
    content = file.read()
    numbers = content.replace(',', '').split()
    for number in numbers:
        if number.strip():  
            diff.append(int(number.strip()))

print(diff)



#HORIZONTAL
#pra cada elemento linha da coluna
print("HORIZONTAL")
for j in range(columns):
    jj = j << 2; 
    m2[j][0] = diff[jj]     + diff[jj + 2]
    m2[j][1] = diff[jj + 1] + diff[jj + 3]
    m2[j][2] = diff[jj]     - diff[jj + 2]
    m2[j][3] = diff[jj + 1] - diff[jj + 3]
 
    m1[j][0] = m2[j][0] + m2[j][1]
    m1[j][1] = m2[j][0] - m2[j][1]
    m1[j][2] = m2[j][2] + m2[j][3]
    m1[j][3] = m2[j][2] - m2[j][3]
    
m1 = np.array(m1)
print(m1)

#VERTICAL
#pra cada elemento coluna da linha
print("\n\nVERTICAL")
print("\nprimeira camada: ")
for i in range(rows): 
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

    #m2[0][i] = m1[0][i] + m1[1][i]
    #m2[1][i] = m1[0][i] - m1[1][i]
    #m2[2][i] = m1[2][i] + m1[3][i]
    #m2[3][i] = m1[2][i] - m1[3][i]
    #m2[4][i] = m1[4][i] + m1[5][i]
    #m2[5][i] = m1[4][i] - m1[5][i]
    #m2[6][i] = m1[6][i] + m1[7][i]
    #m2[7][i] = m1[6][i] - m1[7][i]

#m2 = np.array(m2)
#print(m2)


sad = 0
#SAV
for i in range(columns):
    for j in range(rows):
        sad = sad + abs(m1[i][j])

sad  = ( int ) ( sad / mt.sqrt( 4.0 * 8 ) * 2 )

print("SAD: ",sad)
    