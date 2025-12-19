import sys

readLine = sys.stdin.readline
N = int(readLine())
nums = list(map(int, readLine().split()))
cnt = 0


def check(n: int):
    if n == 1:
        return False
    else:
        for i in range(2, n):
            if n % i == 0:
                return False
        return True


for i in nums:
    if check(i):
        cnt += 1
print(cnt)
