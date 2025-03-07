    let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (NM[0], NM[1])
    
    var graph = [[Int]](repeating: [], count: N + 1)
    var kabins = [Int](repeating: 0, count: N)
    for _ in 0 ..< M {
        let AB = readLine()!.split { $0 == " "}.map { Int($0)! }
        let (A,B) = (AB[0], AB[1])
        graph[A].append(B)
        graph[B].append(A)
    }
    
    func bfs(_ start: Int, _ visited: inout [Bool]) -> [Int] {
        var queue: [(Int,Int)] = [(start, 0)]
        var depths = [Int](repeating: 0, count : N + 1)
        visited[start] = true
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
    
    for i in 1 ... N {
        var visited = [Bool](repeating: false, count: N + 1)
        kabins[i - 1] = bfs(i, &visited).reduce(0,+)
    }
    
    let minValue = kabins.min()!
    print(kabins.firstIndex { $0 == minValue }! + 1)