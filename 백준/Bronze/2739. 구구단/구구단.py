import sys


def makegugudan(n: int):
    for i in range(1, 10):
        print(f"{n} * {i} = {n*i}")


readLine = sys.stdin.readline
n = int(readLine())

makegugudan(n)
