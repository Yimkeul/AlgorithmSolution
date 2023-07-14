N,K= map(int,input().split())
data = []
for _ in range(N):
    data.append(int(input()))

data.sort(reverse=True)

result = 0

for i in data:
    if K//i >0:
        result += K//i
        K = K%i


print(result)