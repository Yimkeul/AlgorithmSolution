func Q_2589() {

    let way = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    let rc = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (r, c) = (rc[0], rc[1])
    var grid = [[String]]()
    for _ in 0 ..< r {
        let line = readLine()!.map { String($0) }
        grid.append(line)
    }

    var visited = Array(repeating: Array(repeating: false, count: c), count: r)
    var customGrid = Array(repeating: Array(repeating: 0, count: c), count: r)
    var customIndex = 1

    for i in 0 ..< r {
        for j in 0 ..< c {
            if grid[i][j] == "L" && !visited[i][j] {
                dfs(i, j, &visited, customIndex)
                customIndex += 1
            }
        }
    }

//    for i in 0 ..< r {
//        for j in 0 ..< c {
//            print(customGrid[i][j], terminator: " ")
//        }
//        print()
//    }


    func isVaild(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && x < r && y >= 0 && y < c
    }


    func dfs(_ x: Int, _ y: Int, _ visited: inout[[Bool]], _ index: Int) {
        if visited[x][y] {
            return
        }
        customGrid[x][y] = index
        visited[x][y] = true
        for (dx, dy) in way {
            let nx = x + dx
            let ny = y + dy
            if isVaild(nx, ny) && grid[nx][ny] == "L" && !visited[nx][ny] {
                dfs(nx, ny, &visited, index)
            }
        }
    }


    var queue = [(Int, Int, Int)]()
    var answer = Int.min
    func bfs(_ x: Int, _ y: Int) -> Int {
        queue.append((x, y, 0))
        var visited = Array(repeating: Array(repeating: false, count: c), count: r)
        visited[x][y] = true
        var maxdis = 0
        while !queue.isEmpty {
            let (qx, qy, qcnt) = queue.removeFirst()
            for (dx, dy) in way {
                let nx = qx + dx
                let ny = qy + dy
                let ncnt = qcnt + 1
                if isVaild(nx, ny) {
                    if customGrid[nx][ny] == customGrid[x][y] && !visited[nx][ny] {
//                        print(customGrid[nx][ny], customGrid[x][y], "(\(nx),\(ny))" , ncnt)
                        maxdis = max(maxdis, ncnt)
                        visited[nx][ny] = true
                        queue.append((nx, ny, ncnt))
                    }
                }
            }

        }
        return maxdis
    }
    for i in 0 ..< r {
        for j in 0 ..< c {
            if customGrid[i][j] != 0 {
                answer = max(answer,bfs(i, j))
            }
//            print("------------------------------")
        }
    }
    print(answer)
}
Q_2589()