    let n = Int(readLine()!)!
    let m = Int(readLine()!)!

    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    var depths = [Int](repeating: -1, count: n + 1)

    for _ in 0 ..< m {
        let ab = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (a, b) = (ab[0], ab[1])
        graph[a].append(b)
        graph[b].append(a)
    }


    func bfs(_ start: Int) {
        var queue: [(Int, Int)] = [(start, 0)]
        visited[start] = true
        depths[start] = 0

        while !queue.isEmpty {
            let (node, d) = queue.removeFirst()
            for n in graph[node] {
                if !visited[n] && d < 2 {
                    visited[n] = true
                    depths[n] = d + 1
                    queue.append((n, d + 1))
                }
            }
        }
    }
    bfs(1)
    print(depths.filter { $0 > 0 && $0 <= 2}.count)