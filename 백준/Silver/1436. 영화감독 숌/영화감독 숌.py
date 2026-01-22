import sys
readline = sys.stdin.readline

N = int(readline().strip())

cnt = 0
result = 666
while True:
    if '666' in str(result):
        cnt += 1
    if cnt == N:
        break
    result += 1
print(result)
