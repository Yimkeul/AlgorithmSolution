import sys

readLine = sys.stdin.readline
T = int(readLine())
for _ in range(0, T):
    h, w, n = map(int, readLine().split())
    floor = n % h
    roomLine = (n // h) + 1
    if floor == 0:
        floor = h
        roomLine -= 1
    print(floor * 100 + roomLine)