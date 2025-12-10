import sys

readLine = sys.stdin.readline
nums = [int(readLine()) for _ in range(0, 9)]
print(f"{max(nums)}\n{nums.index(max(nums)) + 1}")
