T = int(input())
for _ in range(T):
    data = list(input().split(" "))
    num = int(data[0])
    ans =""
    for i in data[1]:
        ans += i*num
    print(ans)
    