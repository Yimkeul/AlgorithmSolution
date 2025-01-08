import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var ans = [Int]()
    var queue = progresses.map { 100 - $0 }
    
    for i in 0 ..< speeds.count {
        queue[i] = queue[i] % speeds[i] == 0 ? queue[i] / speeds[i] : (queue[i] / speeds[i]) + 1
    }
    while !queue.isEmpty {
        let first = queue.first!
        var cnt = 0
        for p in queue {
            if first >= p {
                cnt += 1
            } else {
                break
            }
        }
        for _ in 0 ..< cnt {
            queue.removeFirst()
        }
        ans.append(cnt)
    }
    
    return ans
}