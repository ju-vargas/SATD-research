  

def htv_transform_1() : 
    if sel == 0:
        m1[0] = hth[0] + hth[8]
        m1[1] = hth[1] + hth[9]
        m1[2] = hth[2] + hth[10]
        m1[3] = hth[3] + hth[11]
        m1[4] = hth[4] + hth[12]
        m1[5] = hth[5] + hth[13]
        m1[6] = hth[6] + hth[14]
        m1[7] = hth[7] + hth[15]
    if sel == 1: 
        m1[0] = hth[0] - hth[8]
        m1[1] = hth[1] - hth[9]
        m1[2] = hth[2] - hth[10]
        m1[3] = hth[3] - hth[11]
        m1[4] = hth[4] - hth[12]
        m1[5] = hth[5] - hth[13]
        m1[6] = hth[6] - hth[14]
        m1[7] = hth[7] - hth[15]

    m2[0] = m1[0] + m1[4]
    m2[1] = m1[1] + m1[5]
    m2[2] = m1[2] + m1[6]
    m2[3] = m1[3] + m1[7]
    m2[4] = m1[0] - m1[4]
    m2[5] = m1[1] - m1[5]
    m2[6] = m1[2] - m1[6]
    m2[7] = m1[3] - m1[7]


    m1[0] = m2[0] + m2[2]
    m1[1] = m2[1] + m2[3]
    m1[2] = m2[0] - m2[2]
    m1[3] = m2[1] - m2[3]
    m1[4] = m2[4] + m2[6]
    m1[5] = m2[5] + m2[7]
    m1[6] = m2[4] - m2[6]
    m1[7] = m2[5] - m2[7]
   
    htv[0] = m1[0] + m1[1]
    htv[1] = m1[0] - m1[1]
    htv[2] = m1[2] + m1[3]
    htv[3] = m1[2] - m1[3]
    htv[4] = m1[4] + m1[5]
    htv[5] = m1[4] - m1[5]
    htv[6] = m1[6] + m1[7]
    htv[7] = m1[6] - m1[7]

    
def htv_transform_2():

    if sel == 0:
        htv[0] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) + ((hth[2] + hth[10]) + (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) + (hth[5] + hth[13])) + ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
        htv[1] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) + ((hth[2] + hth[10]) + (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) + (hth[5] + hth[13])) + ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
        htv[2] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) - ((hth[2] + hth[10]) + (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) + (hth[5] + hth[13])) - ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
        htv[3] = ((((hth[0] + hth[8] ) + (hth[4] + hth[12])) - ((hth[2] + hth[10]) + (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) + (hth[5] + hth[13])) - ((hth[3] + hth[11]) + (hth[7] + hth[15]))))
        htv[4] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) + ((hth[2] + hth[10]) - (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) - (hth[5] + hth[13])) + ((hth[3] + hth[11]) - (hth[7] + hth[15]))))
        htv[5] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) + ((hth[2] + hth[10]) - (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) - (hth[5] + hth[13])) + ((hth[3] + hth[11]) - (hth[7] + hth[15]))))
        htv[6] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) - ((hth[2] + hth[10]) - (hth[6] + hth[14]))) + (((hth[1] + hth[9] ) - (hth[5] + hth[13])) - ((hth[3] + hth[11]) - (hth[7] + hth[15]))))
        htv[7] = ((((hth[0] + hth[8] ) - (hth[4] + hth[12])) - ((hth[2] + hth[10]) - (hth[6] + hth[14]))) - (((hth[1] + hth[9] ) - (hth[5] + hth[13])) - ((hth[3] + hth[11]) - (hth[7] + hth[15]))))

    else: 
        htv[0] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) + ((hth[2] - hth[10]) + (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) + (hth[5] - hth[13])) + ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
        htv[1] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) + ((hth[2] - hth[10]) + (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) + (hth[5] - hth[13])) + ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
        htv[2] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) - ((hth[2] - hth[10]) + (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) + (hth[5] - hth[13])) - ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
        htv[3] = ((((hth[0] - hth[8] ) + (hth[4] - hth[12])) - ((hth[2] - hth[10]) + (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) + (hth[5] - hth[13])) - ((hth[3] - hth[11]) + (hth[7] - hth[15]))))
        htv[4] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) + ((hth[2] - hth[10]) - (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) - (hth[5] - hth[13])) + ((hth[3] - hth[11]) - (hth[7] - hth[15]))))
        htv[5] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) + ((hth[2] - hth[10]) - (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) - (hth[5] - hth[13])) + ((hth[3] - hth[11]) - (hth[7] - hth[15]))))
        htv[6] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) - ((hth[2] - hth[10]) - (hth[6] - hth[14]))) + (((hth[1] - hth[9] ) - (hth[5] - hth[13])) - ((hth[3] - hth[11]) - (hth[7] - hth[15]))))
        htv[7] = ((((hth[0] - hth[8] ) - (hth[4] - hth[12])) - ((hth[2] - hth[10]) - (hth[6] - hth[14]))) - (((hth[1] - hth[9] ) - (hth[5] - hth[13])) - ((hth[3] - hth[11]) - (hth[7] - hth[15]))))

#teste - main

hth = [-4,-224,1017, 0,-1,-1015,-352,1017, 201, 283,704,-448, 507, 795, -1015, -848]
m1   = [0,0,0,0,0,0,0,0]
m2   = [0,0,0,0,0,0,0,0]
htv  = [0,0,0,0,0,0,0,0]

sel = 0 
htv_transform_1()
print("aí vai o resultado da forma 1")
print("sel = 0")
print(htv) 

sel = 1 
htv_transform_1()
print("aí vai o resultado da forma 1")
print("sel = 1")
print(htv) 

sel = 0
htv_transform_2()
print("aí vai o resultado da forma 2")
print("sel = 0")
print(htv)

sel = 1
htv_transform_2()
print("aí vai o resultado da forma 2")
print("sel = 1")
print(htv)