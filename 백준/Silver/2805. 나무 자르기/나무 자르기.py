n, m = map(int, input().split())

tree = list(map(int,input().split()))

tree.sort()
#10 15 17 20


max = max(tree)
min = 0

while(max>=min):
    mid = (max+min)//2
    height = 0
    for i in tree:
        if i >=mid:
            height += i-mid
    if height>=m:
        min = mid+1
    else:
        max = mid-1

print(max)        

