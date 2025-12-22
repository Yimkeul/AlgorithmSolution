import sys

readLine = sys.stdin.readline

N = int(readLine())
ans = 0

for i in range(N):
    str_n = str(i)
    temp_sum = 0
    for t in str_n:
        temp_sum += int(t)
    if i + temp_sum == N:
        ans = i
        break
print(ans)
