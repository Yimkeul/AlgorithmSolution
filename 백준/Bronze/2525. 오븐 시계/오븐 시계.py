A , B = list(map(int,input().split(" ")))
C = int(input())
h = C//60
m = C%60
rH = A+h
rM = B+m
if B+m >= 60:
    rH +=1
    rM -=60
if rH >= 24:
    rH -= 24 

print(rH, rM)

