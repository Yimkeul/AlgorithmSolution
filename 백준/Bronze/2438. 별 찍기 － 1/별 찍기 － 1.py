import sys

readLine = sys.stdin.readline

n = int(readLine())


def drawstar(n: int):
    for i in range(1, n + 1):
        print("*" * i)


drawstar(n)
