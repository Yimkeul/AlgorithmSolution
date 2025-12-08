import sys

readLine = sys.stdin.readline
while True:
    a, b = map(int, readLine().split())
    if (a, b) == (0, 0):
        break
    print(a + b)
