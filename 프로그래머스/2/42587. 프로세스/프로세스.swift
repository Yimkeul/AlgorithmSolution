// import Foundation

// func solution(_ priorities:[Int], _ location:Int) -> Int {
//     let len = priorities.count
//     var q = [(Int,Int)]() // idx, pri
//     var dic = [Int:[Int]]() 
//     var process = [Int]()
    
//     var exLocation: (Int,Int) = (0,0) // pos == idx, location
    
//     for (idx, data) in priorities.enumerated() {
//         q.append((idx,data))
//         if idx == location {
//             exLocation = (idx, location)
//         }
//     }
    
//     let firstP = priorities.max()!
//     var startPoint = priorities.firstIndex(of: firstP)!
    
//     for i in 0 ..< len {
//         let index = startPoint % len
//         dic[q[index].1, default: []].append(q[index].0)
//         startPoint += 1
//     }
    
//     var sortDic = dic.sorted { $0.0 > $1.0 }
    
//     for (_, p) in sortDic {
//         for i in p {
//             process.append(i)
//         }
//     }
//     // print(dic)
//     // print(process)
//     return process.firstIndex(of: location)! + 1
// }
import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var queue = priorities.enumerated().map { ($0, $1) }
    var printedOrder = 0

    while !queue.isEmpty {
        let current = queue.removeFirst()

        if queue.contains(where: { $0.1 > current.1 }) {
            // 우선순위가 더 높은 문서가 남아 있다면, 현재 문서를 큐의 뒤로 보냄
            queue.append(current)
        } else {
            // 현재 문서를 출력
            printedOrder += 1
            if current.0 == location {
                // 요청한 문서의 위치가 맞다면 출력 순서 반환
                return printedOrder
            }
        }
    }
    
    return printedOrder
}
