    let NM = readLine()!.split { $0 == " "}.map { Int($0)! }
    let (N,M) = (NM[0], NM[1])
    
    var graph = [[Int]](repeating: [], count: N + 1)
    var visited = [Bool](repeating: false, count: N + 1)
    
    for _ in 0 ..< M {
        let AB = readLine()!.split { $0 == " "}.map { Int($0)! }
        let (A,B) = (AB[0], AB[1])
        graph[A].append(B)
        graph[B].append(A)
    }
    
    func bfs(_ start: Int) -> [Int] {
        var queue = [(start,0)]
        visited[start] = true
        var depths = [Int](repeating: 0, count: N + 1)
        while !queue.isEmpty {
            let (node, depth) = queue.removeFirst()
            for n in graph[node] {
                if !visited[n] {
                    visited[n] = true
                    depths[n] = depth + 1
                    queue.append((n, depth + 1))
                }
            }
        }
        return depths
    }
    
    let depths = bfs(1)
    let maxValue = depths.max()!
    let firstIndex = depths.firstIndex { $0 == maxValue }!
    let count = depths.filter { $0 == maxValue }.count
    print("\(firstIndex) \(maxValue) \(count)")