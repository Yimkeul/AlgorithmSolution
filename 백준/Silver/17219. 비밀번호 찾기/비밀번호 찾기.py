import sys

readLine = sys.stdin.readline

n, m = map(int, readLine().split())
dic = dict()
for _ in range(n):
    site, pw = map(str, readLine().split())
    dic[site] = pw
for _ in range(m):
    site = readLine().rstrip()
    print(dic[site])
