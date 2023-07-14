n = int(input())
box = [0,0,0,0,0]
for i in range(n):
    x, y = list(map(int,input().split(" ")))
    if x >0 and y >0:
        box[0] +=1
    elif x < 0 and y > 0:
        box[1] +=1
    elif x < 0 and y < 0 :
        box[2] +=1
    elif x > 0 and y < 0 :
        box[3] +=1
    elif x == 0 or y == 0:
        box[4] +=1
        
for i in range(len(box)-1):
    print(f"Q{i+1}: {box[i]}")
print(f"AXIS: {box[4]}")
    
        
        