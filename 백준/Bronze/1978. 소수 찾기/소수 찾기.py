N = int(input())
data = list(map(int,input().split()))
ans =0
for i in data:
    tt=0
    if i == 1:
        continue
    for j in range(1,i+1):
        if i%j ==0:
            tt+=1
    if tt<=2:
        ans+=1

print(ans)
