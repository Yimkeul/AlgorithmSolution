import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    for i in 0 ..< query.count {
        var index = query[i]
        if i % 2 == 0 {
            result = Array(result.prefix(upTo: index + 1))
        } else {
            result = Array(result.suffix(from: index))
        }
    }
    return result
}

