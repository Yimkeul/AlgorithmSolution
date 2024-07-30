    let n = Int(readLine()!)!
    var parent = [Int](0...n)
    var rank = Array(repeating: 1, count: n + 1)

    func find(_ x: Int) -> Int {
        if parent[x] == x {
            return x
        }
        parent[x] = find(parent[x])
        return parent[x]
    }

    func union(_ x: Int, _ y: Int) {
        var (fx, fy) = (find(x), find(y))
        if fx == fy {
            return
        }
        
        if rank[fx] < rank[fy] { swap(&fx, &fy) }
        parent[fy] = fx
        rank[fx] += rank[fy]
    }



    for _ in 0 ..< n - 2 {
        let line = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (a, b) = (line[0], line[1])
        union(a, b)
    }

    for i in 2...n {
        if find(1) != find(i) {
            print(1,i)
            break
        }
    }