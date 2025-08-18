import sys
readLine = sys.stdin.readline
a, b = map(int, readLine().split())

if a > b:
    print(">")
elif a < b:
    print("<")
else:
    print("==")
