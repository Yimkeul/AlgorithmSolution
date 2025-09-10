    let t = Int(readLine()!)!

    let directions = [
        (1, 0), (-1, 0), (0, 1), (0, -1)
    ]

    for _ in 0..<t {
        let MNK = readLine()!.split { $0 == " " }.map { Int($0)! }

        var grid = Array(repeating: Array(repeating: 0, count: MNK[0]), count: MNK[1])
        var ans = 0



        for _ in 0..<MNK[2] {
            let XY = readLine()!.split { $0 == " " }.map { Int($0)! }
            grid[XY[1]][XY[0]] = 1
        }

        for i in 0..<MNK[1] {
            for j in 0..<MNK[0] {
                if grid[i][j] == 1 {
                    dfs(i, j, &grid, MNK[1], MNK[0])
                    ans += 1
                }
            }
        }
        print(ans)
    }

    func dfs(_ y: Int, _ x: Int, _ grid: inout [[Int]], _ maxY: Int, _ maxX: Int) {
        if grid[y][x] == 1 {
            grid[y][x] = 0 // visited 역할
            for (dx, dy) in directions {
                let nx = x + dx
                let ny = y + dy
                if nx >= 0, nx < maxX, ny >= 0, ny < maxY {
                    dfs(ny, nx, &grid, maxY, maxX)
                }
            }
        }
    }
