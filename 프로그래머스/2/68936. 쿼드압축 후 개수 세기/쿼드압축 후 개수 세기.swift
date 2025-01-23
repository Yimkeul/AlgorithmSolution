import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var zeroCount = 0
    var oneCount = 0

    func compress(_ x: Int, _ y: Int, _ size: Int) {
        let value = arr[x][y]
        
        for i in x ..< x + size {
            for j in y ..< y + size {
                if arr[i][j] != value {
                    let half = size / 2
                    compress(x, y, half)
                    compress(x + half, y, half)
                    compress(x, y + half, half)
                    compress(x + half, y + half, half)
                    return
                }
            }
        }
        
        if value == 0 {
            zeroCount += 1
        } else {
            oneCount += 1
        }
    }
    
    compress(0, 0, arr.count)
    return [zeroCount, oneCount]
}
