    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    
    let N = Int(readLine()!)!
    
    var graph: [[String]] = [[String]](repeating: [], count: N)
    var visited: [[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
    var graphEx: [[String]] = [[String]](repeating: [], count: N)
    var visitedEx: [[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
    
    var (resultNomal, resultEx) = (0,0)
    
    for i in 0 ..< N {
        let input = readLine()!.map { String($0) }
        graph[i] = input
        let custom = input.map { $0 == "G" ? "R" : $0 }
        graphEx[i] = custom
    }
    
    func bfs(_ x: Int, _ y: Int, _ graph: [[String]], _ visited: inout [[Bool]]) {
        var queue = [(x,y)]
        visited[x][y] = true
        let startColor = graph[x][y]
        
        while !queue.isEmpty {
            let (qx, qy) = queue.removeFirst()
            for (dx, dy) in directions {
                let (nx, ny) = (qx + dx, qy + dy)
                if nx >= 0, nx < N , ny >= 0, ny < N {
                    if startColor == graph[nx][ny] && !visited[nx][ny] {
                        visited[nx][ny] = true
                        queue.append((nx,ny))
                    }
                }
            }
        }
    }
    

    for i in 0 ..< N {
        for j in 0 ..< N {
            if !visited[i][j] {
                bfs(i,j,graph,&visited)
                resultNomal += 1
            }
            
            if !visitedEx[i][j] {
                bfs(i,j,graphEx,&visitedEx)
                resultEx += 1
            }
        }
    }
    print(resultNomal,resultEx)
