H , M = list(map(int,input().split(" ")))
if H == 0:
    H+=24
H *= 60
total = H+M-45
H = total//60
M = total%60
if H>=24:
    H -=24
print(H,M)

