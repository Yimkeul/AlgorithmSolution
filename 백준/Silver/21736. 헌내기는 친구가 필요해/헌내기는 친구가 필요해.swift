let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (NM[0], NM[1])
    
    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    var graph = [[String]]()
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: M), count: N)
    var start = (0, 0) // "I"의 시작 위치

    for i in 0..<N {
        let input = readLine()!.map { String($0) }
        graph.append(input)
        if let j = input.firstIndex(of: "I") {
            start = (i, j)
        }
    }

    func bfs(_ x: Int, _ y: Int) {
        var queue = [(x, y)]
        var front = 0
        visited[x][y] = true
        var meetCount = 0

        while front < queue.count { // `removeFirst()` 대체 (O(1) 성능)
            let (qx, qy) = queue[front]
            front += 1
            
            for (dx, dy) in directions {
                let (nx, ny) = (qx + dx, qy + dy)
                if nx >= 0, nx < N, ny >= 0, ny < M {
                    if !visited[nx][ny], graph[nx][ny] != "X" {
                        if graph[nx][ny] == "P" {
                            meetCount += 1
                        }
                        visited[nx][ny] = true
                        queue.append((nx, ny))
                    }
                }
            }
        }
        print(meetCount == 0 ? "TT" : meetCount)
    }
    
    bfs(start.0, start.1)