import sys

readLine = sys.stdin.readline
n = int(readLine())

for i in range(n, 0, -1):
    result = " " * (i - 1) + "*" * (n - i + 1)
    print(result)