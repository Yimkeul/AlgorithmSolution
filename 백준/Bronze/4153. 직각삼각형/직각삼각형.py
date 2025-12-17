import sys

readLine = sys.stdin.readline
while True:
    a, b, c = list(map(int, readLine().split()))
    z = max(a, b, c)
    x, y = (0, 0)
    if z == a:
        x, y = (b, c)
    elif z == b:
        x, y = (a, c)
    else:
        x, y = (a, b)

    if (a, b, c) == (0, 0, 0):
        break

    if z**2 == x**2 + y**2:
        print("right")
    else:
        print("wrong")
