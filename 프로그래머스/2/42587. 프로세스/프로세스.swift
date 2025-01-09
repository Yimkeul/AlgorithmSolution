import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var waitQueue:[(Int,Int)] = []
    var resultQueue:[Int] = []
    
    for i in 0 ..<  priorities.count {
        waitQueue.append((i,priorities[i]))
    }
    
    while !waitQueue.isEmpty {
        let firstItem = waitQueue.first!
        let firstItemLocation = firstItem.0
        let firstItemPriority = firstItem.1
        if waitQueue.contains { $0.1 > firstItemPriority } {
            waitQueue.removeFirst()
            waitQueue.append(firstItem)
        } else {
            waitQueue.removeFirst()
            resultQueue.append(firstItemLocation)
        }
    }
    
    if let firstIndex = resultQueue.firstIndex(of: location) {
        return firstIndex + 1
    }
    
    return 0
}