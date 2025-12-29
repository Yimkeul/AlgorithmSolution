import sys

readLine = sys.stdin.readline
L = int(readLine())
alpha = readLine().rstrip()


def trasnfor(a: str) -> int:
    return ord(a) - 96


result = 0
for i in range(len(alpha)):
    result += trasnfor(alpha[i]) * 31**i
print(result % 1234567891)
