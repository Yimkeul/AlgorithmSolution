let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (NM[0], NM[1])

    var graph = [[Int]](repeating: [], count: N + 1)
    var visited = [Bool](repeating: false, count: N + 1)

    for _ in 0 ..< M {
        let UV = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (U, V) = (UV[0], UV[1])
        graph[U].append(V)
        graph[V].append(U)
    }
    
    func dfs(_ node: Int) {
        visited[node] = true
        for next in graph[node] {
            if !visited[next] {
                dfs(next)
            }
        }
    }
    
    var components = 0
    for i in 1 ... N {
        if !visited[i] {
            dfs(i)
            components += 1
        }
    }
    print(components)
