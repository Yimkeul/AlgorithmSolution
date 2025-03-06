let n = Int(readLine()!)!
    
    var graph = [[Int]](repeating: [], count: n + 1)
    var result = [Int](repeating: 0, count: n)
    
    while true {
        
        let uv = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (u, v) = (uv[0], uv[1])
        if (u,v) == (-1,-1) {
            break
        }
        graph[u].append(v)
        graph[v].append(u)
    }
    
    func bfs(_ start: Int, _ depths: inout [Int], _ visited: inout [Bool]) {
        var queue: [(Int, Int)] = [(start,0)]
        visited[start] = true
        while !queue.isEmpty {
            let (node, depth) = queue.removeFirst()
            let nextDepth = depth + 1
            for n in graph[node] {
                if !visited[n] {
                    visited[n] = true
                    queue.append((n,nextDepth))
                    depths[n] = nextDepth
                }
            }
        }
        
        
    }
    
    for i in 1 ... n {
        var depths = Array(repeating: 0, count: n + 1)
        var visited = [Bool](repeating: false, count: n + 1)
        bfs(i,&depths, &visited)
//        print(depths)
        result[i - 1] = depths.max()!
    }
//    print(result)
    print("\(result.min()!) \(result.filter { $0 == result.min()! }.count)")
    for i in 0 ..< result.count {
        if result[i] == result.min()! {
            print(i + 1, terminator: " ")
        }
    }
