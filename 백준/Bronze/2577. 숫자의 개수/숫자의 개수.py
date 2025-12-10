import sys

readLine = sys.stdin.readline

a = int(readLine().rstrip())
b = int(readLine().rstrip())
c = int(readLine().rstrip())
t = str(a * b * c)
nums = [0 for _ in range(10)]
for i in t:
    nums[int(i)] += 1

for i in nums:
    print(i)