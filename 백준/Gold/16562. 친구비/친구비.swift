func Q_16562_1() {

    func find(_ x: Int) -> Int {
        if parent[x] == x {
            return x
        }
        parent[x] = find(parent[x])

        return parent[x]
    }

    func union(_ x: Int, _ y: Int) {
//        let fx = find(x)
//        let fy = find(y)
//        if fx < fy {
//            parent[fy] = fx
//        } else {
//            parent[fx] = fy
//        }
        let rootX = find(x)
        let rootY = find(y)
        if rootX != rootY {
            if rootX < rootY {
                parent[rootY] = rootX
            } else {
                parent[rootX] = rootY
            }
        }
    }

    let NMK = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M, K) = (NMK[0], NMK[1], NMK[2])
    let moneys = readLine()!.split { $0 == " " }.map { Int($0)! }

    var parent = [Int](0..<N)
//    var groups = Array(repeating: [Int](), count: N)
    var groups = [Int: [Int]]()


    for _ in 0 ..< M {
        let VW = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (V, W) = (VW[0] - 1, VW[1] - 1)
        union(V, W)
    }
    
//    for i in 0 ..< parent.count {
//        groups[parent[i]].append(i)
//    }
//    print(parent)
//    print(groups)
    
    for i in 0..<N {
         let root = find(i)
         if groups[root] == nil {
             groups[root] = [Int]()
         }
         groups[root]!.append(i)
     }


    var sum = 0
    var isFried = Array(repeating: false, count: N)
    
    for group in groups.values {
         var minValue = Int.max
         for node in group {
             isFried[node] = true
             minValue = min(minValue, moneys[node])
         }
         sum += minValue
     }

    if isFried.contains(false) || sum > K {
        print("Oh no")
    } else {
        print(sum)
    }
}
Q_16562_1()