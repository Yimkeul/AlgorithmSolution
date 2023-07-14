data = list(input())
ans = 10
before = data[0]

for i in range(1,len(data)):
    if data[i] != before:
        ans+=10
    else:
        ans +=5
    before = data[i]
print(ans)
