import sys

readLine = sys.stdin.readline
N = int(readLine())
scores = list(map(int, readLine().split()))
M = max(scores)
result = 0
for i in scores:
    result += i / M * 100
print(result / N)
