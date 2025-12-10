import sys

readLine = sys.stdin.readline
h, m = map(int, readLine().split())
tm = h * 60 + m - 45
ah = tm // 60 if tm >= 0 else 23
am = tm % 60

print(ah, am)
