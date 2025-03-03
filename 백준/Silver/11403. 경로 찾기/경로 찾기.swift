let N = Int(readLine()!)!
    
    var graph = [[Int]]()
    
    for _ in 0 ..< N {
        graph.append(readLine()!.split { $0 == " "}.map { Int($0)! })
    }
    
    var result = Array(repeating: Array(repeating: 0, count: N), count: N)
    
    
    func dfs(_ start: Int, _ current : Int, _ visited: inout [Bool]) {
        for next in 0 ..< N {
            if graph[current][next] == 1 && !visited[next] {
                visited[next] = true
                result[start][next] = 1
                dfs(start,next,&visited)
            }
        }
        
    }
    
    for i in 0 ..< N {
        var visited = Array(repeating: false, count: N)
        dfs(i,i,&visited)
    }
    
    for row in result {
        print(row.map { String($0) }.joined(separator: " ") )
    }
