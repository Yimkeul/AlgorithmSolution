x = [0] * 1001
y = [0] * 1001
for _ in range(3):
    X , Y = list(map(int,input().split(" ")))
    x[X] +=1
    y[Y] +=1

rx = 0
ry = 0
for i in range(len(x)):
    if x[i] == 1:
        rx = i
for i in range(len(y)):
    if y[i] == 1:
        ry = i
print(rx, ry)