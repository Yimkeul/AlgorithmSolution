n = int(input())

# 시간초과
# def cal(a):
#     sum = 0
#     for i in range(1,a+1):
#         if a%i ==0:
#             sum+=i
#     return sum

# ans = 0
# while n != 0 :
#     ans +=cal(n)
#     n-=1

ans = 0
for i in range(1,n+1):
    ans += (n//i)*i

print(ans)