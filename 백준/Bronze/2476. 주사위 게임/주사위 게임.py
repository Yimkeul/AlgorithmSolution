def cal (a , b, c):
    dice = [0,0,0,0,0,0]
    dice[a-1] += 1
    dice[b-1] += 1
    dice[c-1] += 1
    _max =max(dice)
    ans = 0
    if _max == 3:
        ans = (10000+ max(a,b,c)*1000)
    elif _max == 2:
        for i in range(len(dice)):
            if dice[i] == 2:
                ans = (1000 + (i+1)*100)
                break
    # 각각 다른경우
    else:
        ans = (max(a,b,c)*100)
    return ans

N = int(input())
ary = []
for _ in range(N):
    a,b,c = list(map(int,input().split(" ")))
    ary.append(cal(a,b,c))
print(max(ary))

 