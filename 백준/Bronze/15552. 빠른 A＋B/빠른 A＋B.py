import sys
readline = sys.stdin.readline

T = int(readline())
for i in range(T):
    a, b = map(int, readline().split())
    print(a+b)
