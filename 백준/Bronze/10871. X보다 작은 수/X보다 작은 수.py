import sys

readLine = sys.stdin.readline
n, x = map(int, readLine().split())
nums = map(int, readLine().split())
filter = [i for i in nums if i < x]
print(*filter)