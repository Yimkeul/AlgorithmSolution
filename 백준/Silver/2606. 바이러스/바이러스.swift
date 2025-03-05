let n = Int(readLine()!)!
    let pair = Int(readLine()!)!
    var virus = 0
    
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    
    
    for _ in 0 ..< pair {
        let uv = readLine()!.split { $0 == " "}.map { Int($0)! }
        let (u,v) = (uv[0], uv[1])
        graph[u].append(v)
        graph[v].append(u)
    }
    
    func dfs(_ node: Int) {
        visited[node] = true
        
        for next in graph[node] {
            if !visited[next] {
                dfs(next)
                virus += 1
            }
        }
    }
    
    dfs(1)
    
    print(virus)
