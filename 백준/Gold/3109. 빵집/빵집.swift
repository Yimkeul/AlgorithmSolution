
    let way = [-1, 0, 1]

    let RC = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (R, C) = (RC[0], RC[1])
    var grid = [[String]]()


    for _ in 0 ..< R {
        let line = readLine()!.map { String($0) }
        grid.append(line)
    }

    var ans = 0
    for i in 0 ..< R {
        if dfs(i, 0) {
            ans += 1
        }
    }
    print(ans)
    
    func dfs(_ x: Int, _ y: Int) -> Bool {
        if y == C - 1 {
            return true
        }
        for dx in way {
            let nx = x + dx
            let ny = y + 1
            if nx >= 0 && nx < R && ny < C && grid[nx][ny] == "." {
                grid[nx][ny] = "x"
                if dfs(nx,ny) {
                    return true
                }
            }
        }
                
        return false
    }
