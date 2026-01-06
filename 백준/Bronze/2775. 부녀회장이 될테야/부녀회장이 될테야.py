import sys

readLine = sys.stdin.readline
T = int(readLine().strip())
for _ in range(T):
    k = int(readLine().strip())  # 층
    n = int(readLine().strip())  # 호

    apart = [[0 for _ in range(n + 1)] for _ in range(k + 1)]
    apart[0] = [i for i in range(0, n + 1)]
    for i in range(1, k + 1):
        apart[i][0] = 0
        apart[i][1] = 1
        for j in range(2, n + 1):
            apart[i][j] = apart[i][j - 1] + apart[i - 1][j]

    print(apart[k][n])