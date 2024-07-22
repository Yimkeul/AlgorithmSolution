func Q_2589() {

    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    let rc = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (rows, cols) = (rc[0], rc[1])
    var grid = [[String]]()
    for _ in 0 ..< rows {
        let line = readLine()!.map { String($0) }
        grid.append(line)
    }

    func isValid(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && x < rows && y >= 0 && y < cols
    }

    func bfs(_ startX: Int, _ startY: Int) -> Int {
        var queue = [(startX, startY, 0)]
        var visited = Array(repeating: Array(repeating: false, count: cols), count: rows)
        visited[startX][startY] = true
        var maxDistance = 0

        while !queue.isEmpty {
            let (x, y, distance) = queue.removeFirst()
            maxDistance = max(maxDistance, distance)

            for (dx, dy) in directions {
                let nx = x + dx
                let ny = y + dy

                if isValid(nx, ny) && !visited[nx][ny] && grid[nx][ny] == "L" {
                    visited[nx][ny] = true
                    queue.append((nx, ny, distance + 1))
                }
            }
        }

        return maxDistance
    }

    var answer = 0
    for i in 0 ..< rows {
        for j in 0 ..< cols {
            if grid[i][j] == "L" {
                answer = max(answer, bfs(i, j))
            }
        }
    }

    print(answer)
}
Q_2589()