import Foundation
func solution(_ maps: [String]) -> Int {
        let way = [(1, 0), (-1, 0), (0, 1), (0, -1)]
        var grid = [[String]]()
        for i in 0 ..< maps.count {
            grid.append(maps[i].map { String($0) })
        }

        let S = finded(grid, "S")
        let E = finded(grid, "E")
        let L = finded(grid, "L")


        let row = grid.count
        let col = grid[0].count




        func isValid(_ x: Int, _ y: Int) -> Bool {
            return x >= 0 && x < row && y >= 0 && y < col
        }
        func bfs(_ start: (Int, Int), _ end: (Int, Int)) -> Int {
            var visited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
            var queue = [((Int, Int), Int)]()

            queue.append((start, 0))
            visited[start.0][start.1] = true
            while !queue.isEmpty {
                let ((qx, qy), qc) = queue.removeFirst()
                if (qx,qy) == end {
                    return qc
                }
                for (dx, dy) in way {
                    let (nx, ny) = (qx + dx, qy + dy)

                    if isValid(nx, ny) {
                        if grid[nx][ny] != "X" && !visited[nx][ny] {
                            visited[nx][ny] = true
                            queue.append(((nx, ny), qc + 1))
                        }
                    }
                }
            }
            return -1
        }


        let SL = bfs(S, L)
        let LE = bfs(L, E)

        if SL == -1 || LE == -1 {
            return -1
        }
        return SL + LE
    }
    func finded(_ grid: [[String]], _ target: String) -> (Int, Int) {
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[0].count {
                if grid[i][j] == target {
                    return (i, j)
                }
            }
        }
        return (0, 0)
    }
