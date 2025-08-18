import sys
readline = sys.stdin.readline

n = int(readline())
longCnt = n // 4
alpa = 0 if n % 4 == 0 else 1
total = longCnt + alpa
print("long " * total, end="")
print("int")
