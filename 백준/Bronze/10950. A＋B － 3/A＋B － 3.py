import sys

readLine = sys.stdin.readline
t = int(readLine())
for _ in range(0, t):
    a, b = map(int, readLine().split())
    print(a + b)
