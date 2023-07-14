
N = int(input())
road = list(map(int, input().split()))
price = list(map(int,input().split()))
road.append(0)
sum =0
i = 0
for _ in range(len(price)):   
    if i+1 <N :
        if price[i] >price[i+1]:
            sum+=price[i]*road[i]
            i+=1
        else:
            sum+=(road[i]+road[i+1])*price[i]
            i+=2
    else:
        break
print(sum)
 


        

# 4
# 2 3 1
# 5 2 4 1