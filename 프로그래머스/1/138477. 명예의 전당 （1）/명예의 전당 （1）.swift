import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var present:[Int] = []
    var glory:[Int] = []
    for i in score {
        glory.append(i)
        glory = glory.sorted()
        if glory.count <= k {
            if let first = glory.first {
                present.append(first)
            }
        } else {
            glory.removeFirst()
            if let first = glory.first {
                present.append(first)
            }
        }
    }
    return present
}