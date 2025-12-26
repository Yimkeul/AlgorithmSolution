import sys
import math

readLine = sys.stdin.readline
N, M = map(int, readLine().split())
cards = list(map(int, readLine().split()))

hubos = []

for i in range(0, len(cards)):
    for j in range(i + 1, len(cards)):
        for k in range(j + 1, len(cards)):
            target = cards[i] + cards[j] + cards[k]
            if target <= M:
                hubos.append(target)
print(max(hubos))
