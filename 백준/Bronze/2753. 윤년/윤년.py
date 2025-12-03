import sys

readLine = sys.stdin.readline

n = int(readLine())
con1 = n % 4 == 0
con2 = n % 100 != 0
con3 = n % 400 == 0

if con1 & (con2 | con3):
    print(1)
else:
    print(0)
