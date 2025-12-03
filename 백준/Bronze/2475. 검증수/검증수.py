import sys

readLine = sys.stdin.readline
nums = map(int, readLine().split())
nums = [i**2 for i in nums]
print(sum(nums) % 10)