    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, m) = (nm[0], nm[1])

    var board = [[Int]]()
    for _ in 0..<n {
        board.append(readLine()!.split(separator: " ").map { Int($0)! })
    }

    let directions = [(1,0), (-1,0), (0,1), (0,-1)]
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    var maxValue = 0

    func dfs(_ x: Int, _ y: Int, _ depth: Int, _ sum: Int) {
        if depth == 4 {
            maxValue = max(maxValue, sum)
            return
        }
        
        for (dx, dy) in directions {
            let nx = x + dx
            let ny = y + dy
            if nx >= 0, nx < n, ny >= 0, ny < m, !visited[nx][ny] {
                visited[nx][ny] = true
                dfs(nx, ny, depth + 1, sum + board[nx][ny])
                visited[nx][ny] = false
            }
        }
    }

    // 예외 처리용 ㅗ 모양
    let extraShapes = [
        [(0,0), (-1,0), (0,1), (0,-1)],  // ㅗ
        [(0,0), (1,0), (0,1), (0,-1)],   // ㅜ
        [(0,0), (-1,0), (1,0), (0,1)],   // ㅓ
        [(0,0), (-1,0), (1,0), (0,-1)]   // ㅏ
    ]

    for i in 0..<n {
        for j in 0..<m {
            visited[i][j] = true
            dfs(i, j, 1, board[i][j])
            visited[i][j] = false

            // ㅗ, ㅜ, ㅓ, ㅏ 모양 처리
            for shape in extraShapes {
                var total = 0
                var isValid = true
                for (dx, dy) in shape {
                    let nx = i + dx
                    let ny = j + dy
                    if nx < 0 || nx >= n || ny < 0 || ny >= m {
                        isValid = false
                        break
                    }
                    total += board[nx][ny]
                }
                if isValid {
                    maxValue = max(maxValue, total)
                }
            }
        }
    }

    print(maxValue)
