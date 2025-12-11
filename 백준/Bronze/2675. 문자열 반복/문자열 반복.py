import sys

readLine = sys.stdin.readline
T = int(readLine())
for _ in range(T):
    n, S = readLine().split()
    result = ""
    for s in range(len(S)):
        result += S[s] * int(n)
    print(result)
