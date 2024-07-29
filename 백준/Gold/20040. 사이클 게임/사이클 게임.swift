let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var parent = [Int](0..<n)

    func find(_ x: Int) -> Int {
        if parent[x] == x {
            return x
        }
        parent[x] = find(parent[x])
        return parent[x]
    }

    func union(_ a: Int, _ b: Int) {
        let a = find(a)
        let b = find(b)
        
        if a == b {
            return
        }
        if a > b {
            parent[a] = b
        } else {
            parent[b] = a
        }
    }

    func isSameParent(_ a: Int, _ b: Int) -> Bool {
        return find(a) == find(b)
    }

    var answer = 0
    for i in 1...m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0], b = input[1]
        if isSameParent(a, b) {
            answer = i
            break
        }
        union(a, b)
    }

    print(answer)
