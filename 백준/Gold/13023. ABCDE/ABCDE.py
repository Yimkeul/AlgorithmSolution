import sys 
input = sys.stdin.readline
# sys.setrecursionlimit(10**6)
n , m = map(int,input().split())
A = [
    [] for _ in range(n)
]
visited = [False]*2001
arive = False

def DFS(now, depth):
    global arive
    if depth== 5 or arive:
        arive = True
        return
        
    visited[now] = True

    for i in A[now]:
        if not visited[i]:
            # visited[i] =True
            DFS(i,depth+1)
    visited[now] = False

for i in range(m):
    s, e = map(int,input().split())
    A[s].append(e)
    A[e].append(s)

# print(A)

for i in range(n):
    DFS(i,1)  
    # visited[i] = False
    if arive:
        break
if arive:
    print(1)
else:
    print("0")
 

