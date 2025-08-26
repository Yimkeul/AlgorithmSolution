import sys

readline = sys.stdin.readline

setA = set()
setB = set()

n, m = map(int, readline().split())
setA = set([readline().rstrip() for _ in range(n)])
setB = set([readline().rstrip() for _ in range(m)])

setR = setA.intersection(setB)
result = sorted(setR)
print(len(result))
for name in result:
    print(name)
