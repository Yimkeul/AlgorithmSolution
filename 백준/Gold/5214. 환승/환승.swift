let NKM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, _, M) = (NKM[0], NKM[1], NKM[2])

    var graph = [[Int]](repeating: [], count: N + M + 1)
    var visited = [Bool](repeating: false, count: N + M + 1)

    for i in 1 ... M {
        let input = readLine()!.split { $0 == " " }.map { Int($0)! }
        let hyperTube = N + i
        
        for station in input {
            graph[station].append(hyperTube)
            graph[hyperTube].append(station)
        }
    }
    
    func bfs(_ start: Int) -> Int {
        var queue = [(start, 1)]
        visited[start] = true
        var index = 0
        
//        while !queue.isEmpty {
        while index < queue.count {
            let (node, depth) = queue[index]
            index += 1
            if node == N {
                return depth
            }
            
            for n in graph[node] {
                if !visited[n] {
                    visited[n] = true
                    if n > N {
                        queue.append((n, depth))
                    } else {
                        queue.append((n, depth + 1))
                    }
                    
                }
            }
        }
        
        return -1
    }
    print(bfs(1))
