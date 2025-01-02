import Foundation

func solution(_ s:String) -> [Int] {
    var cnt = 0
    var zeros = 0
    
    var renewal = s

    while true {
        var tempString = renewal.map { String($0) }.filter { $0 == "1"}.joined()
        
        var zero = renewal.count - tempString.count // 제거할 0의 개수
        var afterZero = tempString.count
        zeros += zero
        cnt += 1
        renewal = String(afterZero, radix: 2)
        // print(renewal , cnt, zeros)
        if tempString == "1" {
            break
        }
    }
    
    return [cnt, zeros]
}