import sys

readLine = sys.stdin.readline
n = int(readLine())

nums = 1
cnt = 1
while n > nums:
    nums += 6 * cnt
    cnt += 1
print(cnt)
