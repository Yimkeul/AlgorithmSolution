n = int(input())
data = list(map(int,input().split()))

data.sort()
result = data[0]
for i in range(1,len(data)):
    data[i] +=data[i-1]
    result += data[i]

print(result)
    