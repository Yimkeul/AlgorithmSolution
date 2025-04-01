let N = Int(readLine()!)!
    var board = Array(repeating: Array(repeating: 0, count: N), count: N)
    var visited = Array(repeating: Array(repeating: false, count: N), count: N)
    let K = Int(readLine()!)!

    for _ in 0..<K {
        let data = readLine()!.split(separator: " ").map{ Int($0)!-1 }
        board[data[0]][data[1]] = 2
    }

    let L = Int(readLine()!)!
    var move_dir = [Int: Int]()

    for _ in 0..<L {
        let data = readLine()!.split(separator: " ")
        move_dir[Int(data[0])!] = data[1] == "D" ? 1 : 3
    }

    let dx = [0, 1, 0, -1]
    let dy = [1, 0, -1, 0]

    func is_valid_coord(_ x: Int, _ y: Int) -> Bool {
        return (0 <= x && x < N) && (0 <= y && y < N)
    }

    var cnt: Int = 0
    var snake = [(Int, Int)]()
    snake.append((0, 0))
    board[0][0] = 1

    var x = 0
    var y = 0
    var d = 0

    while true {
        cnt += 1
        x = x + dx[d]
        y = y + dy[d]

        if !is_valid_coord(x, y) || board[x][y] == 1 { break }

        if board[x][y] == 0 {
            snake.append((x, y))
            board[x][y] = 1
            let dt = snake.removeFirst()
            board[dt.0][dt.1] = 0
        }
        else if board[x][y] == 2 {
            snake.append((x, y))
            board[x][y] = 1
        }
        
        for (key, value) in move_dir {
            if cnt == key { d = (d+value)%4 }
        }
    }

    print(cnt)
