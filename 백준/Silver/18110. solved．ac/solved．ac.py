import sys

input = sys.stdin.readline


def round2(num):
    return int(num) + (1 if num - int(num) >= 0.5 else 0)


n = int(input())
if not n:
    print(0)
else:
    minusNum = round2(n * 0.15)
    arr = []
    for i in range(n):
        arr.append(int(input()))
    arr.sort()
    sum = 0
    for i in range(minusNum, n - minusNum):
        sum += arr[i]
    avg = round2(sum / (n - minusNum * 2))
    print(avg)
