def check(a,b,c):
    isA = 0
    isB = 0
    isC = 0
    if a**2 + b**2 != c**2:
        isC = 1
    if b**2 + c**2 != a**2:
        isA = 1
    if a**2 + c**2 != b**2:
        isB = 1
    if isA + isB + isC == 3:
        return print("wrong")
    return print("right")

while True:
    a,b,c = list(map(int,input().split()))
    if a == 0 and b == 0 and c == 0 :
        break
    check(a,b,c)