import sys
sys.setrecursionlimit(10**6)

def solution(maps):
    n = len(maps)
    m = len(maps[0])
    
    visited = [[False] * m for _ in range(n)]
    def dfs(x,y):
        directions = [(-1,0), (1,0), (0,1), (0,-1)]
        visited[x][y] = True
        total = int(maps[x][y])
        for dx, dy in directions:
            nx = x + dx
            ny = y + dy
            
            if 0 <= nx < n and 0 <= ny < m:
                if not visited[nx][ny] and maps[nx][ny] != "X":
                    total += dfs(nx,ny)
        return total


            
            

    
    answer = []
    
    
    for i in range(n):
        for j in range(m):
            if maps[i][j] != "X" and not visited[i][j]:
                answer.append(dfs(i,j))
    
    
    
    
    return sorted(answer) if answer else [-1]