import sys

readLine = sys.stdin.readline
n = int(readLine())
nums = list(map(int, readLine().split()))
print(min(nums), max(nums))
