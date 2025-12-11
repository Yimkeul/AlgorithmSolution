import sys

readLine = sys.stdin.readline
nums = set()
for _ in range(10):
    nums.add(int(readLine()) % 42)
print(len(nums))
