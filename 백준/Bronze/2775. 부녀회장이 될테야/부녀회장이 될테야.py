def _2775 (k,n):
    f0 = [x for x in range(1, n+1)]
    for _ in range(k):
        for j in range(1,n):
            f0[j] += f0[j-1]
    return f0[-1]

    

T = int(input())
for i in range(T):
    k = int(input())
    n = int(input())
    print(_2775(k,n))

