import sys

readLine = sys.stdin.readline


def check(nums: str):
    for i in range(len(nums) // 2):
        if nums[i] != nums[len(nums) - 1 - i]:
            print("no")
            return
    print("yes")


while True:
    input = readLine().rstrip()
    if input == "0":
        break
    check(input)
