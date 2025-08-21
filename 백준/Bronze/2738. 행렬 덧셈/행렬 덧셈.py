import sys
readline = sys.stdin.readline
n, m = map(int, readline().split())

A = [list(map(int, readline().split())) for _ in range(n)]
B = [list(map(int, readline().split())) for _ in range(n)]

for i in range(n):
    for j in range(m):
        print(A[i][j] + B[i][j], end=" ")
    print()
