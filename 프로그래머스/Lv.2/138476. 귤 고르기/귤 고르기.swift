import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var filtered:[Int:Int] = [:]
    for i in tangerine {
        filtered[i, default: 0] += 1
    }
    let sortedFilter = filtered.sorted { $0.value > $1.value }
    var valueSum = 0
    var result = 0
    for i in sortedFilter {
        valueSum += i.value
        result += 1
        if valueSum >= k {
            break
        }
    }

    return result
}