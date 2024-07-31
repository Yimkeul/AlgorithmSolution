Q_14502()
func Q_14502() {
    let direction = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    let NM = readLine()!.split { $0 == " " }.map { Int ($0)! }
    let (N, M) = (NM[0], NM[1])
    var grid = [[Int]]()
    var viruses = [(Int, Int)]()
    var empty = [(Int, Int)]()
    var max = Int.min

    for i in 0 ..< N {
        let line = readLine()!.split { $0 == " " }.map { Int($0)! }
        for j in 0 ..< line.count {
            if line[j] == 2 {
                viruses.append((i, j))
            } else if line[j] == 0 {
                empty.append((i, j))
            }
        }
        grid.append(line)
    }
    
    for i in 0..<empty.count {
        for j in 0..<i {
            for k in 0..<j {
                let y1 = empty[i].0
                let x1 = empty[i].1
                let y2 = empty[j].0
                let x2 = empty[j].1
                let y3 = empty[k].0
                let x3 = empty[k].1
                
                grid[y1][x1] = 1
                grid[y2][x2] = 1
                grid[y3][x3] = 1
                
                let newLab = grid
                bfs(newLab)
                
                grid[y1][x1] = 0
                grid[y2][x2] = 0
                grid[y3][x3] = 0
            }
        }
    }
    
    print(max)
    func bfs(_ grid: [[Int]]) {
        var bgrid = grid
        var queue = [(Int,Int)]()
        var visited = Array(repeating: Array(repeating: false, count: M), count: N)
        var cnt = 0
        for i in 0 ..< viruses.count {
            queue.append(viruses[i])
        }
        while !queue.isEmpty {
            let (qx, qy) = queue.removeFirst()
            for (dx, dy) in direction {
                let nx = qx + dx
                let ny = qy + dy
                if nx >= 0 && ny >= 0 && nx < N && ny < M {
                    if bgrid[nx][ny] == 0 && !visited[nx][ny] {
                        queue.append((nx,ny))
                        visited[nx][ny] = true
                        bgrid[nx][ny] = 2
                    }
                }

            }
        }
        
        for i in 0 ..< N {
            cnt += bgrid[i].filter { $0 == 0 }.count
        }
        if max < cnt {
            max = cnt
        }
    }

}