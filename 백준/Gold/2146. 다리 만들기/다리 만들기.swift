func Q_2146() {

    let way = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    let N = Int(readLine()!)!
    var grid = [[Int]]()

    for _ in 0 ..< N {
        let input = readLine()!.split { $0 == " " }.map { Int($0)! }
        grid.append(input)
    }

    var customMap = Array(repeating: Array(repeating: 0, count: N), count: N)
    var visited = Array(repeating: Array(repeating: false, count: N), count: N)
    var islandIndex = 1

    // DFS로 섬 구분
    for i in 0 ..< N {
        for j in 0 ..< N {
            if grid[i][j] == 1 && !visited[i][j] {
                dfs(i, j, &visited, islandIndex)
                islandIndex += 1
            }
        }
    }

    func dfs(_ x: Int, _ y: Int, _ visited: inout [[Bool]], _ islandIndex: Int) {
        var stack = [(x, y)]
        while !stack.isEmpty {
            let (cx, cy) = stack.removeLast()
            if visited[cx][cy] {
                continue
            }
            visited[cx][cy] = true
            customMap[cx][cy] = islandIndex
            for (dx, dy) in way {
                let nx = cx + dx
                let ny = cy + dy
                if nx >= 0 && nx < N && ny >= 0 && ny < N && grid[nx][ny] == 1 && !visited[nx][ny] {
                    stack.append((nx, ny))
                }
            }
        }
    }

    var queue: [(Int, Int, Int)] = []
    var result = -1
    func bfs(_ x: Int, _ y: Int) {
        queue.append((x, y, 0))
        var visited = Array(repeating: Array(repeating: false, count: N), count: N)

        visited[x][y] = true

        while !queue.isEmpty {
            let (qx, qy, qcnt) = queue.removeFirst()
            for (dx, dy) in way {
                let nx = qx + dx
                let ny = qy + dy
                let ncnt = qcnt + 1
                if nx >= 0 && nx < N && ny >= 0 && ny < N {
                    if customMap[nx][ny] != customMap[x][y] && !visited[nx][ny] {
                        if customMap[nx][ny] != 0 {
                            result = result < 0 ? ncnt : min(result, qcnt)
                            break
                        }
                        visited[nx][ny] = true
                        queue.append((nx, ny, ncnt))
                    }

                }

            }
        }
    }
//
//    for i in 0 ..< N {
//        for j in 0 ..< N {
//            print(customMap[i][j], terminator: " ")
//        }
//        print()
//    }
    
    for i in 0 ..< N {
        for j in 0 ..< N {
            if customMap[i][j] != 0 {
                bfs(i,j)
            }
        }
    }
    
    
    print(result)
}

Q_2146()