import sys
readLine = sys.stdin.readline
n, m, v = map(int, readLine().split())
graph = [[] for _ in range(n + 1)]
visited = [False for _ in range(n + 1)]
visited2 = visited.copy()


for _ in range(m):
    x, y = map(int, readLine().split())
    graph[x].append(y)
    graph[y].append(x)

for i in range(1, n + 1):
    graph[i].sort()


def dfs(node):
    visited[node] = True
    print(node, end=" ")
    for n in graph[node]:
        if not visited[n]:
            dfs(n)


dfs(v)
print()


def bfs(node):
    queue = [node]
    visited2[node] = True

    while queue:
        first = queue.pop(0)
        print(first, end=" ")
        for n in graph[first]:
            if not visited2[n]:
                visited2[n] = True
                queue.append(n)


bfs(v)
