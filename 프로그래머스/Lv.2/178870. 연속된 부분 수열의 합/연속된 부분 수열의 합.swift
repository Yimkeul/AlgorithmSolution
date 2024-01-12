// import Foundation

// func solution(_ sequence:[Int], _ k:Int) -> [Int] {
//     var start: Int = 0
//     var point: [Int:Int] = [:]
//     var answer: [Int] = []
//     while start < sequence.count {
//         var sum = 0
//         for endPoint in start ..< sequence.count {
//             sum += sequence[endPoint]
//             if sum == k {
//                 point[start] = endPoint
//                 break
//             }
//         }
//         start += 1
//     }
//     let sortPoint = point.sorted {
//         if abs($0.key - $0.value) == abs($1.key - $1.value) {
//             return $0.key < $1.key
//         }
//          return abs($0.key - $0.value) < abs($1.key - $1.value)
//     }
    
//     answer.append(sortPoint.first!.key)
//     answer.append(sortPoint.first!.value)
    
//     return answer
// }

import Foundation

func solution(_ sequence: [Int], _ k: Int) -> [Int] {
    var start = 0
    var sum = 0
    var point: [Int: Int] = [:]
    var answer: [Int] = []

    for end in 0..<sequence.count {
        sum += sequence[end]

        while sum > k {
            sum -= sequence[start]
            start += 1
        }

        if sum == k {
            point[start] = end
        }
    }

    let sortPoint = point.sorted {
        if abs($0.key - $0.value) == abs($1.key - $1.value) {
            return $0.key < $1.key
        }
        return abs($0.key - $0.value) < abs($1.key - $1.value)
    }

    if let firstPoint = sortPoint.first {
        answer.append(firstPoint.key)
        answer.append(firstPoint.value)
    }

    return answer
}
