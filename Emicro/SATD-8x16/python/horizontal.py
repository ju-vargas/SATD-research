  

def hth_transform_1() : 
    m2[0] = diff[0] + diff[4]
    m2[1] = diff[1] + diff[5]
    m2[2] = diff[2] + diff[6]
    m2[3] = diff[3] + diff[7]
    m2[4] = diff[0] - diff[4]
    m2[5] = diff[1] - diff[5]
    m2[6] = diff[2] - diff[6]
    m2[7] = diff[3] - diff[7]

    m1[0] = m2[0] + m2[2]
    m1[1] = m2[1] + m2[3]
    m1[2] = m2[0] - m2[2]
    m1[3] = m2[1] - m2[3]
    m1[4] = m2[4] + m2[6]
    m1[5] = m2[5] + m2[7]
    m1[6] = m2[4] - m2[6]
    m1[7] = m2[5] - m2[7]

    m2[0] = m1[0] + m1[1]
    m2[1] = m1[0] - m1[1]
    m2[2] = m1[2] + m1[3]
    m2[3] = m1[2] - m1[3]
    m2[4] = m1[4] + m1[5]
    m2[5] = m1[4] - m1[5]
    m2[6] = m1[6] + m1[7]
    m2[7] = m1[6] - m1[7]

    
def hth_transform_2():

    hth[0] = ((diff[0] + diff[4]) + (diff[2] + diff[6])) + ((diff[1] + diff[5]) + (diff[3] + diff[7]));
    hth[1] = ((diff[0] + diff[4]) + (diff[2] + diff[6])) - ((diff[1] + diff[5]) + (diff[3] + diff[7]));
    hth[2] = ((diff[0] + diff[4]) - (diff[2] + diff[6])) + ((diff[1] + diff[5]) - (diff[3] + diff[7]));
    hth[3] = ((diff[0] + diff[4]) - (diff[2] + diff[6])) - ((diff[1] + diff[5]) - (diff[3] + diff[7]));
    hth[4] = ((diff[0] - diff[4]) + (diff[2] - diff[6])) + ((diff[1] - diff[5]) + (diff[3] - diff[7]));
    hth[5] = ((diff[0] - diff[4]) + (diff[2] - diff[6])) - ((diff[1] - diff[5]) + (diff[3] - diff[7]));
    hth[6] = ((diff[0] - diff[4]) - (diff[2] - diff[6])) + ((diff[1] - diff[5]) - (diff[3] - diff[7]));
    hth[7] = ((diff[0] - diff[4]) - (diff[2] - diff[6])) - ((diff[1] - diff[5]) - (diff[3] - diff[7]));


#teste - main

diff = [-4,-127,127, 0,-1,-127,-92,127]
m1   = [0,0,0,0,0,0,0,0]
m2   = [0,0,0,0,0,0,0,0]
hth  = [0,0,0,0,0,0,0,0]

hth_transform_1()
print("aí vai o resultado da forma 1")
print(m2) 

hth_transform_2()
print("aí vai o resultado da forma 2")
print(hth)