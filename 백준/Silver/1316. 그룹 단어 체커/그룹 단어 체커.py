import sys

readline = sys.stdin.readline
N = int(readline())
ans = 0

for _ in range(N):
    stack = []
    word = list(readline().rstrip())
    for i in word:
        if len(stack) == 0:
            stack.append(i)
        else:
            if stack[-1] != i:
                stack.append(i)
    ans = ans + 1 if len(stack) == len(set(stack)) else ans
print(ans)
