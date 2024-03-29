import Foundation

func Q_1074() {
    func visitZ(_ n: Int, _ r: Int, _ c: Int, _ count: inout Int, _ targetR: Int, _ targetC: Int) {
        if n == 0 { // 기저 조건: 배열 크기가 1x1인 경우
            if r == targetR && c == targetC {
                print(count)
            }
            count += 1
            return
        }
        
        let size = 1 << (n - 1) // 배열 크기: 2^n
        let area = size * size
        
        // 왼쪽 위 영역
        if targetR < r + size && targetC < c + size {
            visitZ(n - 1, r, c, &count, targetR, targetC)
        } else {
            count += area
        }
        
        // 오른쪽 위 영역
        if targetR < r + size && targetC >= c + size {
            visitZ(n - 1, r, c + size, &count, targetR, targetC)
        } else {
            count += area
        }
        
        // 왼쪽 아래 영역
        if targetR >= r + size && targetC < c + size {
            visitZ(n - 1, r + size, c, &count, targetR, targetC)
        } else {
            count += area
        }
        
        // 오른쪽 아래 영역
        if targetR >= r + size && targetC >= c + size {
            visitZ(n - 1, r + size, c + size, &count, targetR, targetC)
        } else {
            count += area
        }
    }
    let input = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, r, c) = (input[0], input[1], input[2])
    var cnt = 0
    visitZ(N, 0, 0, &cnt, r, c)

}


let _ = Q_1074()
