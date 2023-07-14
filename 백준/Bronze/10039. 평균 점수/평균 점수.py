n = 0 
for i in range(5):
    temp = int(input())
    if temp <40:
        n += 40
    else :
        n+= temp
print(n//5)