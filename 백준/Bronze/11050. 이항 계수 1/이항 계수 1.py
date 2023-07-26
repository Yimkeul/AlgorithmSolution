def packtorial(n):
    answer = 1
    for i in range(1,n+1):

        answer *= i
    return answer

n,k = list(map(int,input().split()))
# print(packtorial(5))
# print(packtorial(2))
# print(packtorial(3))

combination = packtorial(n)//(packtorial(k)*packtorial(n-k))
print(combination)
"""
nCk
n(n-1)/k
n!/k!(n-k)!
"""

    

