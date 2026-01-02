import sys
import math


readLine = sys.stdin.readline

a, b = map(int, readLine().split())
print(math.gcd(a, b))
print(math.lcm(a, b))
