import Foundation

func Q_2178() {
    let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (NM[0], NM[1])

    var grid = [[Int]]()
    var visited = Array(repeating: Array(repeating: false, count: M), count: N)
    let directions = [(1,0), (-1,0), (0,1), (0,-1)]

    for _ in 0 ..< N {
        let input = readLine()!
            .map { String($0) }
            .map { Int($0)! }
        grid.append(input)
    }
    print(BFS())
    
    
    func BFS() -> Int {
        var queue = [((Int,Int), Int)]() // (x,y), distance
        queue.append(((0,0), 1))
        while !queue.isEmpty {
            let ((qx, qy), dist) = queue.removeFirst()
            visited[qx][qy] = true
            if qx == N - 1 && qy == M - 1 {
                return dist
            }

            
            for (dx,dy) in directions {
                let nx = qx + dx
                let ny = qy + dy
                if isValid(nx, ny, &visited) {
                    queue.append(((nx, ny), dist + 1))
                    visited[nx][ny] = true
                }
            }
            
        }
        return -1
    }
    
    func isValid(_ x:Int, _ y: Int, _ visited: inout[[Bool]]) -> Bool {
        return x >= 0 && x < N && y >= 0 && y < M && !visited[x][y] && grid[x][y] != 0
    }
}
Q_2178()