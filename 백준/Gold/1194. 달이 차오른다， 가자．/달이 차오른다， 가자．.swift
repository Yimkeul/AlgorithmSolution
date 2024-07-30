let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (NM[0], NM[1])
    var grid = [[String]]()
    let keyType = ["a", "b", "c", "d", "e", "f"]
    let doorType = ["A", "B", "C", "D", "E", "F"]
    let direction = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    var queue = [((Int, Int), Int, Int)]()

    for _ in 0..<N {
        let line = readLine()!.map { String($0) }
        grid.append(line)
    }

    let startPoint = findStart()
    print(bfs())

    func bfs() -> Int {
        var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 64), count: M), count: N)
        queue.append(((startPoint.0, startPoint.1), 0, 0)) // (x, y, distance, keys)

        while !queue.isEmpty {
            let ((qx, qy), qdistance, qkeys) = queue.removeFirst()
            visited[qx][qy][qkeys] = true

            if grid[qx][qy] == "1" {
                return qdistance
            }

            for (dx, dy) in direction {
                let nx = qx + dx
                let ny = qy + dy
                if isValid(nx, ny) && !visited[nx][ny][qkeys] {
                    var newKeys = qkeys

                    if let keyIndex = keyType.firstIndex(of: grid[nx][ny]) {
                        newKeys |= (1 << keyIndex)
                    }

                    if let doorIndex = doorType.firstIndex(of: grid[nx][ny]) {
                        if (qkeys & (1 << doorIndex)) == 0 {
                            continue
                        }
                    }

                    if grid[nx][ny] != "#" {
                        queue.append(((nx, ny), qdistance + 1, newKeys))
                        visited[nx][ny][newKeys] = true
                    }
                }
            }
        }

        return -1
    }

    func isValid(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && x < N && y >= 0 && y < M
    }

    func findStart() -> (Int, Int) {
        for i in 0..<N {
            for j in 0..<M {
                if grid[i][j] == "0" {
                    return (i, j)
                }
            }
        }
        return (0, 0)
    }
