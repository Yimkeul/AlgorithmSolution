def pactorial(n):
    ans = 1
    for i in range(1,n+1):
        ans *= i
    return ans
def countingZero(n):
    cnt = 0
    for i in reversed(n):
        if i != "0" : 
            return cnt
        else : 
            cnt += 1
n = int(input())
print(countingZero(str(pactorial(n))))