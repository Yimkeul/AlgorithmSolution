import sys
import math

readLine = sys.stdin.readline

A, B, V = map(int, readLine().split())
result = (V - A) / (A - B)
print(math.ceil(result) + 1)