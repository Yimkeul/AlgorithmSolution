import sys
import math

readLine = sys.stdin.readline

N = int(readLine())
sizes = list(map(int, readLine().split()))
T, P = map(int, readLine().split())
F = 0
for s in sizes:
    F += math.ceil(s / T)
print(F)
print(N // P, N % P)