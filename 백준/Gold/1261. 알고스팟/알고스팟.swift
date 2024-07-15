func Q_1261() {

    let dist = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (M, N) = (NM[0], NM[1])
    var grid = [[Int]]()
    var counts = Array(repeating: Array(repeating: Int.max, count: M), count: N)

    for _ in 0 ..< N {
        let input = readLine()!.map { Int(String($0))! }
        grid.append(input)
    }

    func isVaild(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && x < N && y >= 0 && y < M
    }

    var queue = [(Int, Int)]()
    bfs(0, 0)
    print(counts[N - 1][M - 1])

    func bfs(_ x: Int, _ y: Int) {
        queue.append((x, y))
        counts[x][y] = 0
        while !queue.isEmpty {

            let (qx, qy) = queue.removeFirst()

            for (dx, dy) in dist {
                let nx = qx + dx
                let ny = qy + dy

                if (nx, ny) == (N, M) {
                    break
                }
                if isVaild(nx, ny) {
                    if grid[nx][ny] == 1 {
                        if counts[nx][ny] > counts[qx][qy] + 1 {
                            counts[nx][ny] = counts[qx][qy] + 1
                            queue.append((nx, ny))
                        }
                    } else {
                        if counts[nx][ny] > counts[qx][qy] {
                            counts[nx][ny] = counts[qx][qy]
                            queue.append((nx, ny))
                        }
                    }
                }
            }
        }
    }

}
Q_1261()