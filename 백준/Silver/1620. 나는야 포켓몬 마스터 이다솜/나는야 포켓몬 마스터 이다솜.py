import sys
readline = sys.stdin.readline

m, n = map(int, readline().split())

id2Dic = dict()
name2Dic = dict()

for i in range(1, m+1):
    name = readline().rstrip()
    id2Dic[i] = name
    name2Dic[name] = i

for _ in range(n):
    check = readline().rstrip()
    if check.isdigit():
        print(id2Dic[int(check)])
    else:
        print(name2Dic[check])

