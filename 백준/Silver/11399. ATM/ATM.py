import sys
readLine = sys.stdin.readline
n = int(readLine())
time = sorted(list(map(int, readLine().split())))
# print(time)
for i in range(1, len(time)):
    time[i] = time[i] + time[i - 1]
# print(time)
print(sum(time))
