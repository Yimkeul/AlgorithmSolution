func Q_16562() {
    let NMK = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M, K) = (NMK[0], NMK[1], NMK[2])
    let moneys = readLine()!.split { $0 == " " }.map { Int($0)! }

    var grid = Array(repeating: [Int](), count: N)
    var friendList = Array(repeating: false, count: N)

    for _ in 0 ..< M {
        let VW = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (V, W) = (VW[0] - 1, VW[1] - 1)
        grid[V].append(W)
        grid[W].append(V)
    }
    let connectedComponents = findConnectedComponents(grid)
    var sum = 0
    for i in 0 ..< connectedComponents.count {
        var minValue = Int.max
        for j in 0 ..< connectedComponents[i].count {
            friendList[connectedComponents[i][j]] = true
            minValue = min(minValue, moneys[connectedComponents[i][j]])
        }
        sum += minValue
    }

    if sum <= K {
        print(sum)
    } else {
        print("Oh no")
    }

}

fileprivate func find(_ parent: inout [Int], _ x: Int) -> Int {
    if parent[x] != x {
        parent[x] = find(&parent, parent[x])
    }
    return parent[x]
}

fileprivate func union(_ parent: inout [Int], _ rank: inout [Int], _ x: Int, _ y: Int) {
    let rootX = find(&parent, x)
    let rootY = find(&parent, y)

    if rootX != rootY {
        if rank[rootX] > rank[rootY] {
            parent[rootY] = rootX
        } else if rank[rootX] < rank[rootY] {
            parent[rootX] = rootY
        } else {
            parent[rootY] = rootX
            rank[rootX] += 1
        }
    }
}

fileprivate func findConnectedComponents(_ graph: [[Int]]) -> [[Int]] {
    let n = graph.count
    var parent = Array(0..<n)
    var rank = Array(repeating: 0, count: n)

    for (node, neighbors) in graph.enumerated() {
        for neighbor in neighbors {
            union(&parent, &rank, node, neighbor)
        }
    }

    var componentMap = [Int: [Int]]()

    for i in 0..<n {
        let root = find(&parent, i)
        if componentMap[root] == nil {
            componentMap[root] = [Int]()
        }
        componentMap[root]?.append(i)
    }

    return Array(componentMap.values)
}

Q_16562()