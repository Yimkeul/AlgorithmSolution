def customSum(n):
    if n == 1:
        return 1
    elif n == 2:
        return 2
    elif n == 3:
        return 4
    else:
        return customSum(n - 1) + customSum(n - 2) + customSum(n - 3)


T = int(input())
for _ in range(T):
    n = int(input())
    print(customSum(n))
