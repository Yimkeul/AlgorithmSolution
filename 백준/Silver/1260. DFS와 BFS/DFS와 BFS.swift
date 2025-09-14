let nmv = readLine()!.split { $0 == " "}.map { Int($0)! }

    var graph:[[Int]] = Array(repeating: [], count: nmv[0] + 1)

    var visited:[Bool] = Array(repeating: false, count: nmv[0] + 1)

    for _ in 0..<nmv[1] {
        let xy = readLine()!.split { $0 == " "}.map { Int($0)! }
        let (x,y) = (xy[0], xy[1])
        graph[x].append(y)
        graph[y].append(x)
    }
    graph = graph.map { $0.sorted() }
    dfs(nmv[2])
    visited = .init(repeating: false, count: nmv[0] + 1)
    print()
    bfs(nmv[2])

    func dfs(_ node: Int) {
        visited[node] = true
        print(node, terminator: " ")
        for n in graph[node] {
            if !visited[n] {
                dfs(n)
            }
        }
    }

    func bfs(_ node: Int) {
        var queue:[Int] = [node]
        visited[node] = true

        while !queue.isEmpty {
            let first = queue.removeFirst()
            print(first, terminator: " ")
            for n in graph[first] {
                if !visited[n] {
                    visited[n] = true
                    queue.append(n)
                }
            }
        }
    }
