from collections import deque

queue = deque()
yosepus = []

n, k = list(map(int,input().split()))

for i in range(1,n+1):
    queue.append(i)

while queue:
    for i in range(k-1):
        queue.append(queue.popleft())
    yosepus.append(queue.popleft())

temp = list(str(yosepus))
temp[0]= "<"
temp[len(temp)-1] = ">"
for i in temp:
    print(i, end="")
