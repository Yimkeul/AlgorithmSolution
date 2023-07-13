k , n = map(int,input().split())

data = []

for i in range(k):
    data.append(int(input()))

data.sort()

min = 1
max = max(data)

while (max>=min):
    mid = (max+min)//2
    len = 0
    for i in data:
        if i >=mid:
            len += i//mid
    if len>=n:
        min = mid+1
    else:
        max = mid -1

print(max)