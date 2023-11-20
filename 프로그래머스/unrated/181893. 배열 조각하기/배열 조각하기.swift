import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    
    var result = arr
    
    for i in 0 ..< query.count {
        if i % 2 == 0{
            // 짝수 인덱스 -> 인덱스 기준으로 뒷부분 버리고 앞부분 얻기
            let index = query[i]
            result = Array(result.prefix(upTo: index + 1))
        } else {
            // 홀수 인덱스 -> 인덱스 기준으로 앞부분 버리고 뒷부분 얻기
            let index = query[i]
            result = Array(result.suffix(from: index))
        }
    }
    
    return result
}