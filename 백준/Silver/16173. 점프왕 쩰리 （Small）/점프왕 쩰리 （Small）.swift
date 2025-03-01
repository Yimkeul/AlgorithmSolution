
    let N = Int(readLine()!)!

    var grid = [[Int]]()
    for _ in 0 ..< N {
        let input = readLine()!.split { $0 == " " }.map { Int($0)! }
        grid.append(input)
    }

    var visited = Array(repeating: Array(repeating: false, count: N), count: N)

    var found = false

    func dfs(_ x: Int, _ y: Int) {
        if x < 0 || y < 0 || x >= N || y >= N || visited[x][y] {
            return
        }
        
        if grid[x][y] == -1 {
            found = true
            return
        }
        
        visited[x][y] = true
        let jump = grid[x][y]
        if jump > 0 {
            dfs(x + jump, y)
            dfs(x, y + jump)
        }
    }
    
    dfs(0,0)
    
    print(found ? "HaruHaru" : "Hing")
