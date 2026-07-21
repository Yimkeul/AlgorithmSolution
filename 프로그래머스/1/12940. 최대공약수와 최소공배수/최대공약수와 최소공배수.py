import math
def solution(n, m):
    gcd = math.gcd(n,m)
    lcm = math.lcm(n,m)
    
    answer = [gcd, lcm]
    return answer