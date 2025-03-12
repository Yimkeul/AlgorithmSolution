let K = Int(readLine()!)!

    for _ in 0 ..< K { solution() }
    
    func solution() {
        let VE = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (V, E) = (VE[0], VE[1])
        
        var graph = [[Int]](repeating: [], count: V + 1)
        var visited = [Int](repeating: 0, count: V + 1)
        
        for _ in 0 ..< E {
            let uv = readLine()!.split { $0 == " " }.map { Int($0)! }
            let (u, v) = (uv[0], uv[1])
            graph[u].append(v)
            graph[v].append(u)
        }
        
        func bfs(_ start: Int) -> Bool {
            var queue = [(start, 1)]
            visited[start] = 1
            
            while !queue.isEmpty {
                let (node, color) = queue.removeFirst()
                for n in graph[node] {
                    if visited[n] == 0 {
                        visited[n] = color * -1
                        queue.append((n,color * -1))
                    }
                    
                    if visited[n] == color {
                        return false
                    }
                }
            }
            return true
        }
        
        var answer = true
        
        for i in 1...V {
            if visited[i] == 0 && !bfs(i) {
                answer = false
                break
            }
        }
        print(answer ? "YES" : "NO")
    }