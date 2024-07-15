func Q_13023() {
    let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N,M) = (NM[0], NM[1])
    
    var grid = Array(repeating: [Int](), count : N)
    var visited = Array(repeating: false, count : N)
    var _fin = false
    
    
    for _ in 0 ..< M {
        let AB = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (A,B) = (AB[0], AB[1])
        grid[A].append(B)
        grid[B].append(A)
    }
    
    
    func dfs(_ x: Int, _ y : Int) {
        if y == 5 || _fin {
            _fin = true
            return
        }
        visited[x] = true
        for i in grid[x] {
            if !visited[i] {
                dfs(i, y + 1)
            }
        }
        visited[x] = false
    }
    
    for i in 0 ..< N {
        dfs(i,1)
        if _fin {
            break
        }
    }
    print(_fin ? 1 : 0)
    
}
Q_13023()