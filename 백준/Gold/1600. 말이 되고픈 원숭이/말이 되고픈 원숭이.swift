func Q_1600() {
    let direction = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    let special = [(2, 1), (2, -1), (-2, 1), (-2, -1), (1, 2), (1, -2), (-1, 2), (-1, -2)]
    let K = Int(readLine()!)!
    let WH = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (W, H) = (WH[0], WH[1])
    var grid = [[Int]]()

    var queue = [(Int, Int, Int, Int)]()

    for _ in 0 ..< H {
        let line = readLine()!.split { $0 == " " }.map { Int($0)! }
        grid.append(line)
    }
    print(bfs())

    func isValid(_ x: Int, _ y: Int, _ visited: inout [[[Bool]]], _ k: Int) -> Bool {
        return x >= 0 && x < H && y >= 0 && y < W && !visited[x][y][k] && grid[x][y] != 1
    }
    func bfs() -> Int {
        // x, y, distance, k
        queue.append((0, 0, 0, K))
//        var visited = Array(repeating: Array(repeating: Array(repeating: false, count: K), count: W), count: H)
        var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 31), count: 201), count: 201)
        var idx = 0
        while queue.count > idx {
            let (qx, qy, qd, qk) = queue[idx]
            idx += 1
            if (qx, qy) == (H - 1, W - 1) {
                return qd
            }
            if qk > 0 {
                for (dx, dy) in special {
                    let nx = qx + dx
                    let ny = qy + dy
                    if isValid(nx, ny, &visited, qk - 1) {
                        queue.append(((nx, ny, qd + 1, qk - 1)))
                        visited[nx][ny][qk - 1] = true
                    }

                }
            }
            for (dx, dy) in direction {
                let nx = qx + dx
                let ny = qy + dy
                if isValid(nx, ny, &visited, qk) {
                    queue.append(((nx, ny, qd + 1, qk)))
                    visited[nx][ny][qk] = true
                }
            }
        }
        return -1
    }

}
Q_1600()