n = int(input())
data = list(map(int,input().split()))
m = int(input())

data.sort()
min = 1
max = max(data)

while(max>=min):
    mid = (max+min)//2
    hei = 0
 
    for i in data:
        if i>=mid:
            hei+=mid
        else:
            hei+=i
    if hei >m:
        max = mid-1
    else:
        min = mid +1
      


print(max)