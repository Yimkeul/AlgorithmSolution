N = int(input())
c = 0
n = 0
for _ in range(N):
    if int(input()) == 1:
        c +=1
    else:
        n +=1
if c>n:
    print("Junhee is cute!")
    
else:
    print("Junhee is not cute!")