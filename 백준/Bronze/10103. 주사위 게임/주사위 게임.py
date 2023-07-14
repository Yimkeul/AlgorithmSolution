n = int(input())
X = 100
Y = 100
for i in range(n):
    A, B = list(map(int,input().split(" ")))
    if A < B:
        X -= B
    elif A > B:
        Y -= A
print(X)
print(Y)
    
