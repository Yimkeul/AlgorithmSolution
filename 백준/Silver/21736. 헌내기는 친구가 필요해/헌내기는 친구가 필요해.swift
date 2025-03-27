let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (NM[0], NM[1])

    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    var graph = [[String]](repeating: [], count: N)
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: M), count: N)

    for i in 0 ..< N {
        let input = readLine()!.map { String($0) }
        graph[i] = input
    }

    func findI() -> (Int, Int) {
        for i in 0 ..< N {
            for j in 0 ..< M {
                if graph[i][j] == "I" {
                    return (i, j)
                }
            }
        }
        return (0, 0)
    }


    func bfs(_ xy: (Int,Int)) {
        var queue = [xy]
        visited[xy.0][xy.1] = true
        var meetCount = 0

        while !queue.isEmpty {
            let (qx, qy) = queue.removeFirst()
            for (dx, dy) in directions {
                let (nx, ny) = (qx + dx, qy + dy)
                if nx >= 0, nx < N, ny >= 0, ny < M {
                    if !visited[nx][ny], graph[nx][ny] != "X" {
                        if graph[nx][ny] == "P" {
                            meetCount += 1
                        }
                        visited[nx][ny] = true
                        queue.append((nx,ny))
                    }
                }
            }
        }
        print(meetCount == 0 ? "TT" : meetCount)
    }
    
    bfs(findI())
