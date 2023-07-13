x , y  = map(int,input().split())

min = 1
max = x
z = int(y*100/x)
if(z>=99):
    print(-1)
else:    
    while max>=min:
        mid= (max+min)//2
        if int((y+mid)*100/(x+mid)) >z:
            max = mid -1
        else:
            min = mid+1

    print(min)
