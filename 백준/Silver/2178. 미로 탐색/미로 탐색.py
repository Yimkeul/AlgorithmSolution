"""
4 6
110110
110110
111111
111101
"""
# dfs로 해결해보기  -->안됨
# DFS 는 스택 or 재귀
# def DFS(miro , x, y, result):
#     move_x = [0,0,-1,1]
#     move_y = [1,-1,0,0]
#     # 상 하 좌 우
#     for i in range(4):
#         next_x = x + move_x[i]
#         next_y = y + move_y[i]
#         if ( next_x < N and next_x>=0 and next_y < M and next_y>=0):
#             result+=1
#             DFS(miro,next_x,next_y , result)
#         else:
#             print("sss : ", result)


from collections import deque
# 입력
N , M = list(map(int,input().split(" ")))
# 배열 만들기
miro = [[0] * M for _ in range(N)]
# 방문 체크 배열
visited = [[0] * M for _ in range(N)]

for i in range(N):
    data = list(map(int,input()))
    for j in range(len(data)):
        miro[i][j] = data[j]
# 1 : 이동 가능 , 0 : 이동 불가 , 상하좌우 이동 (1,1)부터 (N,M) 이동
#miro[N][M] 으로 들어감 

move_x = [0,0,-1,1]
move_y = [1,-1,0,0]

def BFS (x,y):
    queue = deque()
    queue.append([x,y])

    while queue:
        x, y = queue.popleft()
        for i in range(4):
            nx = x + move_x[i]
            ny = y + move_y[i]
            if x == N-1 and y == M-1:
                print(miro[N-1][M-1])
                break
            if 0 <=nx<N and 0 <=ny<M:
                if visited[nx][ny] == 0 and miro[nx][ny] == 1:
                    miro[nx][ny]  = miro[x][y]+ 1
                    visited[nx][ny] = 1
                    queue.append([nx,ny])

BFS(0,0)


