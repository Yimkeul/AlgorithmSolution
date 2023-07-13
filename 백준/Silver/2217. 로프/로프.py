N = int(input())
data = []

for i in range(N):
    data.append(int(input()))
data.sort(reverse=True)
n=1
for i in range(len(data)):
    data[i] = data[i]*(i+1)

print(max(data))