import sys

readLine = sys.stdin.readline
N = int(readLine())
S = readLine().rstrip()
ans = 0
for i in S:
    ans += int(i)
print(ans)
