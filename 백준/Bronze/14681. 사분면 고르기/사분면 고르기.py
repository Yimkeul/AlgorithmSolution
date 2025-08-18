import sys
readline = sys.stdin.readline

x = int(readline())
y = int(readline())

match (x, y):
    case _ if x > 0 and y > 0:
        print(1)
    case _ if x < 0 and y > 0:
        print(2)
    case _ if x < 0 and y < 0:
        print(3)
    case _ if x > 0 and y < 0:
        print(4)
