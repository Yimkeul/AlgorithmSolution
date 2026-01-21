import sys
readline = sys.stdin.readline
N = int(readline())
ary = [readline().strip() for _ in range(N)]
ary = list(set(ary))

ary = sorted(ary, key = lambda x : (len(x),x))
for i in ary:
    print(i)