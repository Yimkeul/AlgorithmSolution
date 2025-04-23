import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    var q1 = queue1[queue1.indices]
    var q2 = queue2[queue2.indices]
    
    var q1Sum = q1.reduce(0,+)
    var q2Sum = q2.reduce(0,+)
    
    let targetSum = (q1Sum + q2Sum) / 2
    var count = 0
    
    while !q1.isEmpty && !q2.isEmpty {
        if q1Sum == targetSum {
            return count
        }
        if q1Sum < targetSum {
            // let pop = q2.removeFirst()
            let pop = q2.popFirst()!
            q1Sum += pop
            q1.append(pop)
        } else {
            // let pop = q1.removeFirst()
            // q2.append(pop)
            q1Sum -= q1.popFirst()!
        }
        count += 1
        
    }
    
    return -1
}
























// func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//     let array: [Int] = queue1 + queue2
//     // queue1 의 좌우 포인터.
//     var left: Int = 0
//     var right: Int = queue1.count
//     var answer: Int = 0
     
//     var queue1Sum: Int = queue1.reduce(0, +)
//     let queue2Sum: Int = queue2.reduce(0, +)
//     let goal: Int = (queue1Sum + queue2Sum) / 2
    
//     if (queue1Sum + queue2Sum) % 2 != 0 {
//         return -1
//     }
    
//     // ✅ 큐 사이 이동없이 불가능한 문제 조건.
//     if goal < queue1.max()! || goal < queue2.max()! {
//         return -1
//     }

//     while right < array.count && left <= right {
//         if queue1Sum < goal {
//             // queue1 이 목표값보다 작으면 queue2 에서 이동.
//             queue1Sum += array[right]
//             right += 1
//         } else if queue1Sum > goal {
//             // queue1 이 목표값보다 크면 queueu2 로 이동.
//             queue1Sum -= array[left]
//             left += 1
//         } else {
//             // goal 과 같은 경우.
//             break
//         }
//         answer += 1
//     }
    
//     // 이동이 마친 후에도 goal 에 도달하지 않는 경우.
//     if queue1Sum != goal {
//         return -1
//     }
    
//     return answer
// }

// func solution(_ queue1: [Int], _ queue2: [Int]) -> Int {
//     var count = 0
//     var queue1Sum = queue1.reduce(0, +)
//     let halfTotal = (queue1Sum + queue2.reduce(0, +)) / 2
//     var mutableQueue1 = queue1[queue1.indices]
//     var mutableQueue2 = queue2[queue2.indices]

//     while !mutableQueue1.isEmpty && !mutableQueue2.isEmpty {
//         guard queue1Sum != halfTotal else {
//             return count
//         }
//         count += 1
//         if queue1Sum < halfTotal {
//             let first = mutableQueue2.popFirst()!
//             queue1Sum += first
//             mutableQueue1.append(first)
//         } else {
//             queue1Sum -= mutableQueue1.popFirst()!
//         }
//     }
//     return -1
// }