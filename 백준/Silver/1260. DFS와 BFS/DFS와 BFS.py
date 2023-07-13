from collections import deque


n , m , s = map(int,input().split())
A = [
    [] for _ in range(n+1)
]
visited = [False]*(n+1)
for i in range(m):
    a, b = map(int,input().split())
    A[a].append(b)
    A[b].append(a)

for i in range(1,n+1):
    A[i].sort()


def DFS(start):
    print(start,end=" ")
    visited[start] = True
    for i in A[start]:
        if not visited[i]:
            DFS(i)

def BFS(start):
    que =  deque()
    que.append(start)
    visited[start] = True

    while(que):
        now_node = que.popleft()
        print(now_node,end=" ")
        for i in A[now_node]:
            if not visited[i]:
                visited[i] = True
                que.append(i)


DFS(s)
print()
visited = [False]*(n+1)
BFS(s)




# 4 5 1
# 1 2
# 1 3
# 1 4
# 2 4
# 3 4