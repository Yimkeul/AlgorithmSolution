Q_14940()
func Q_14940() {
    let dy = [0,0,1,-1]
    let dx = [-1,1,0,0]

    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let (n,m) = (NM[0],NM[1])

    var map = [[Int]]()
    var queue = [(Int,Int)]()
    var result = Array(repeating: Array(repeating: -1, count: m), count: n)

    for i in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        for j in 0..<m {
            if input[j] == 2 { // 시작점(숫자2)좌표 queue에 추가
                queue.append((i,j))
                result[i][j] = 0
            }
            if input[j] == 0 { // 0은 result에 미리 0으로 초기화
                result[i][j] = 0
            }
        }
        map.append(input)
    }

    while !queue.isEmpty {
        let now = queue.removeFirst()

        for i in 0..<4 {
            let moveY = dy[i] + now.0
            let moveX = dx[i] + now.1
            
            guard moveY >= 0 && moveY < n && moveX >= 0 && moveX < m else { continue }
            guard result[moveY][moveX] == -1 else { continue }
            
            result[moveY][moveX] = result[now.0][now.1] + 1
            
            queue.append((moveY,moveX))
        }
    }

    for i in result {
        i.forEach { print($0,terminator: " ") }
        print("")
    }
}