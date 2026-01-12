import sys
import math

readLine = sys.stdin.readline

n, k = map(int, readLine().split())

result = math.comb(n, k)
print(result)
