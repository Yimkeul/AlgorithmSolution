import sys
readline = sys.stdin.readline
pices = list(map(int, readline().split()))
sample = [1, 1, 2, 2, 2, 8]


for i in range(6):
    if sample[i] >= pices[i]:
        print(sample[i] - pices[i], end=" ")
    else:
        print((pices[i] - sample[i]) * -1, end=" ")