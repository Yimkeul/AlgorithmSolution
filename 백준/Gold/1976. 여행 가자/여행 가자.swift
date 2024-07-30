let N = Int(readLine()!)!
    let _ = Int(readLine()!)!
    
    var parent = [Int](0 ... N)
//    var root = Array(repeating: 0, count : N + 1)
    
    func find(_ x:Int) -> Int {
        if parent[x] == x {
            return x
        }
        parent[x] = find(parent[x])
        return parent[x]
    }
    func union(_ x: Int, _ y: Int) {
        let px = find(x)
        let py = find(y)
        if px == py { return }
        if px < py {
            parent[py] = px
        } else {
            parent[px] = py
        }
        
    }
    
    for i in 1 ... N {
        let line = readLine()!.split { $0 == " " }.map { Int($0)! }
        for j in 0 ..< line.count {
            if line[j] == 1 {
                union(i, j + 1)
            }
        }
    }
    let plane = readLine()!.split { $0 == " " }.map { Int($0)! }
    
    var ans = "YES"
    var root = find(plane[0])
    
//    for i in 0 ..< plane.count {
//        if parent[plane[i]] != 1 {
//            ans = "NO"
//        }
//    }
//    print(parent)
    
    for city in plane {
        if find(city) != root {
            ans = "NO"
            break
        }
    }
    print(ans)
