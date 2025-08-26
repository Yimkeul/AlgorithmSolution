import sys
readline = sys.stdin.readline
n, k = map(int, readline().split())
money = [int(readline()) for _ in range(n)]
money.reverse()
cnt = 0
for m in money:
    if k == 0:
        break
    if k / n == 0:
        continue
    else:
        cnt += k // m
        k = k % m
print(cnt)
