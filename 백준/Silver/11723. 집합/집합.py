import sys


readline = sys.stdin.readline

M = int(readline())
s = set()


def add(x):
    s.add(x)


def remove(x):
    if x in s:
        s.remove(x)


def check(x):
    if x in s:
        print(1)
    else:
        print(0)


def toggle(x):
    if x in s:
        s.remove(x)
    else:
        s.add(x)


def all():
    global s
    s = set([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
             12, 13, 14, 15, 16, 17, 18, 19, 20])


def empty():
    global s
    s = set()


for _ in range(M):
    input = list(readline().split())
    if input[0] == "add":
        add(int(input[1]))
    elif input[0] == "remove":
        remove(int(input[1]))
    elif input[0] == "check":
        check(int(input[1]))
    elif input[0] == "toggle":
        toggle(int(input[1]))
    elif input[0] == "all":
        all()
    elif input[0] == "empty":
        empty()
