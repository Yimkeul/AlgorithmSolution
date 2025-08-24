import sys
readLine = sys.stdin.readline
isbn = readLine()

total = 0

multi = 0

for i in range(13):
    if isbn[i] == "*":
        multi = 1 if i % 2 == 0 else 3
    elif i % 2 == 0:
        total += int(isbn[i])
    elif i % 2 != 0:
        total += 3 * int(isbn[i])
# print(total, multi)

for i in range(10):
    if (total + (multi * i)) % 10 == 0:
        print(i)
