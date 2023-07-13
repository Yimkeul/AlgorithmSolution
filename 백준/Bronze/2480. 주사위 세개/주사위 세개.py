data = list(map(int,input().split(" ")))
dice = [0,0,0,0,0,0]
for i in data:
     dice[i-1] +=1
_max =max(dice)

if _max == 3:
    print(10000+ max(data)*1000)
elif _max == 2:
    for i in range(len(dice)):
        if dice[i] == 2:
            print(1000 + (i+1)*100)
            break
    pass
# 각각 다른경우
else:
    print(max(data)*100)
 