import sys

readLine = sys.stdin.readline

ISBN = readLine().strip()
total = 0
index = 0

for i in range(13):
    if ISBN[i] == "*":
        index = 1 if i % 2 == 0 else 3
    else:
        total += int(ISBN[i]) * (1 if i % 2 == 0 else 3)

for x in range(10):
    if (total + index * x) % 10 == 0:
        print(x)
        break
