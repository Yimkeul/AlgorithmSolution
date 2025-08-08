import Foundation

func gCar(_ target: Character, _ storage: inout [[Character]], _ n: Int, _ m: Int) {
    let dx = [-1, 0, 1, 0]
    let dy = [0, 1, 0, -1]
    
    var delPoint: [(Int, Int)] = []
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    for i in 0..<n {
        for j in 0..<m {
            if i != 0 && i != n-1 && j != 0 && j != m-1 { continue }
            
            if storage[i][j] == target {
                delPoint.append((i, j))
            } else if storage[i][j] == " " {
                var queue: [(Int, Int)] = [(i, j)]
                visited[i][j] = true
                var idx = 0
                
                while idx < queue.count {
                    let (x, y) = queue[idx]
                    idx += 1
                    
                    for dir in 0..<4 {
                        let nx = x + dx[dir]
                        let ny = y + dy[dir]
                        if nx < 0 || nx >= n || ny < 0 || ny >= m { continue }
                        
                        if storage[nx][ny] == target && !visited[nx][ny] {
                            delPoint.append((nx, ny))
                            visited[nx][ny] = true
                        }
                        if storage[nx][ny] == " " && !visited[nx][ny] {
                            queue.append((nx, ny))
                            visited[nx][ny] = true
                        }
                    }
                }
            }
        }
    }
    
    for (r, c) in delPoint {
        storage[r][c] = " "
    }
}

func crain(_ target: Character, _ storage: inout [[Character]], _ n: Int, _ m: Int) {
    for i in 0..<n {
        for j in 0..<m {
            if storage[i][j] == target {
                storage[i][j] = " "
            }
        }
    }
}

func solution(_ storage: [String], _ requests: [String]) -> Int {
    let n = storage.count
    let m = storage[0].count
    
    // 처음부터 [[Character]]로 변환해서 사용
    var grid = storage.map { Array($0) }
    
    for cmd in requests {
        if cmd.count == 1, let ch = cmd.first {
            gCar(ch, &grid, n, m)
        } else if let ch = cmd.first {
            crain(ch, &grid, n, m)
        }
    }
    
    var answer = 0
    for i in 0..<n {
        for j in 0..<m {
            if grid[i][j] != " " {
                answer += 1
            }
        }
    }
    return answer
}
