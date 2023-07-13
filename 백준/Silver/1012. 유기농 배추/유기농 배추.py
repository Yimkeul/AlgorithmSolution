import sys

sys.setrecursionlimit(10000)
T = int(input())


dx = [0,0,-1,1]
dy = [1,-1,0,0]
def DFS(x,y):
    visited[y][x] = 1
    for i in range(4):
        nx = dx[i] + x
        ny = dy[i] + y
        if 0 <= nx < M and 0 <= ny < N:
            if visited[ny][nx] == 0 and graph[ny][nx] == 1:
                DFS(nx,ny)    


#testcase
for _ in range(T):
    #input
    # M = 가로 , N = 세로 K = input 
    M,N,K = list(map(int,input().split(" ")))    
    graph = [[0]*(M) for _ in range(N)]
    visited = [[0]*(M) for _ in range(N)]
    cnt  = 0

    for i in range(K):
        X, Y = list(map(int,input().split(" ")))
        graph[Y][X] = 1
    for i in range(N):
        for j in range(M):
            if visited[i][j] == 0 and graph[i][j] ==1:
                DFS(j,i)
                cnt +=1
    print(cnt)
