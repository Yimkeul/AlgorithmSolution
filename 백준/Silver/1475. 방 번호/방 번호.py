import math
n = input()
dir = [0]*10
# 0~9 까지 배열
for i in n:
    if int(i) == 6 or int(i)== 9:
        if dir[6] <= dir[9]:
            dir[6]+=1
        else:
            dir[9]+=1
    else :
        dir[int(i)] +=1


print(max(dir))





