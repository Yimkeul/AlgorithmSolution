N = int(input())
grid = []
for i in range(N):
    x, y = list(map(int, input().split()))
    grid.append((x, y))

grid.sort(key=lambda x: (x[1], x[0]))

for i in grid:
    print(i[0], i[1])
