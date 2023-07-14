T = int(input())
"""
A = 300
B = 60
C = 10
"""
A = 0
B = 0 
C = 0

A = T//300
T %= 300

B = T // 60
T %= 60

C = T //10
T %= 10

if T >0:
    print(-1)
else:
    print(A,B,C)
