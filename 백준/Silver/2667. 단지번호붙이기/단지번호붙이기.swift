
    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    let N = Int(readLine()!)!

    var graph = [[Int]](repeating: [], count: N)
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)

    for i in 0 ..< N {
        let input = readLine()!.map { String($0) }.map { Int($0)! }
        graph[i] = input
    }

    func bfs(_ x: Int, _ y: Int) -> Int {
           var queue = [(x, y)]
           visited[x][y] = true
           var houseCount = 1

           while !queue.isEmpty {
               let (cx, cy) = queue.removeFirst()
               for (dx, dy) in directions {
                   let (nx, ny) = (cx + dx, cy + dy)
                   if nx >= 0, nx < N, ny >= 0, ny < N {
                       if !visited[nx][ny], graph[nx][ny] == 1 {
                           visited[nx][ny] = true
                           queue.append((nx, ny))
                           houseCount += 1
                       }
                   }
               }
           }
           return houseCount
       }
    
    
    var complexSizes = [Int]()
    for i in 0..<N {
        for j in 0..<N {
            if graph[i][j] == 1, !visited[i][j] {
                let size = bfs(i, j)
                complexSizes.append(size)
            }
        }
    }

    // 결과 출력
    complexSizes.sort()
    print(complexSizes.count)
    for size in complexSizes {
        print(size)
    }
