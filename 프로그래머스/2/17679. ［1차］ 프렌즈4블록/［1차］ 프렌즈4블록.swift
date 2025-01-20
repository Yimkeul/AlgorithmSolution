import Foundation

func solution(_ m: Int, _ n: Int, _ board: [String]) -> Int {
        let distance = [(1, 0), (0, 1), (1, 1)]
        var grid = [[String]]()
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)

        for b in board {
            grid.append(b.map { String($0) })
        }

        func isA2Z(_ string: String) -> Bool {
            return string >= "A" && string <= "Z"
        }

        func isValid(_ x: Int, _ y: Int) -> Bool {
            return x >= 0 && x < m && y >= 0 && y < n
        }

        func checkBlock(_ point: (Int, Int), _ visited: inout [[Bool]]) -> Bool {
            let target = grid[point.0][point.1]
            for (dx, dy) in distance {
                let nx = point.0 + dx // h
                let ny = point.1 + dy // w
                if isValid(nx, ny) && target != "0" && target == grid[nx][ny] {
                    continue
                } else {
                    return false
                }
            }

            visited[point.0][point.1] = true
            for (dx, dy) in distance {
                let nx = point.0 + dx // h
                let ny = point.1 + dy // w
                visited[nx][ny] = true
            }
            return true
        }

        func clearBoard(_ board: inout [[String]], _ visited: inout [[Bool]]) {
            for i in 0 ..< m {
                for j in 0 ..< n {
                    if visited[i][j] {
                        board[i][j] = "0"
                    }
                }
            }
        }
        
        func downBlock(_ board: inout [[String]]) {
            for i in (1 ..< m ).reversed() {
                for j in 0 ..< n {
                    if board[i][j] == "0" {
                        for k in stride(from: i, to: -1, by: -1) {
                            if board[k][j] != "0" {
                                board[i][j] = board[k][j]
                                board[k][j] = "0"
                                break
                            }
                        }
                    }
                }
            }
        }

        func checkDownToggle(_ visited: inout [[Bool]]) -> Bool {
            for i in visited {
                if i.contains(true) {
                    return true
                }
            }
            return false
        }

        
        func clearVisited() -> [[Bool]] {
            return [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
        }

        
        
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                _ = checkBlock((i, j), &visited)
            }
        }
        while checkDownToggle(&visited) {
            clearBoard(&grid, &visited)
            downBlock(&grid)
            visited = clearVisited()
            for i in 0 ..< m {
                for j in 0 ..< n {
                    _ = checkBlock((i, j), &visited)
                }
            }
        }
        
        return grid.map { $0.filter { $0 == "0"}.count }.reduce(0, +)
    }