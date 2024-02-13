import Foundation

func solution(_ order:[Int]) -> Int {
    var beltStack: [Int] = []
    var max: Int = 0
    var count: Int = 0
    
    for box in order {
        if beltStack.last == box {
            count += 1
            let _ = beltStack.removeLast()
        } else if max < box {
            count += 1
            for b in max+1..<box {
                beltStack.append(b)
            }
            max = box
        } else {
            break
        }
    }
    return count
}