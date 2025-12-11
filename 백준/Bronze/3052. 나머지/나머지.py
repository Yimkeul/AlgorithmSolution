import sys

readLine = sys.stdin.readline
nums = []
for _ in range(10):
    nums.append(int(readLine()) % 42)
s_nums = set(nums)
print(len(s_nums))
