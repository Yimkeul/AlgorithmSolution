import Foundation

func solution(_ strArr:[String]) -> Int {
    var groupCounts: [Int: Int] = [:]

    for str in strArr {
        let length = str.count
        if var count = groupCounts[length] {
            count += 1
            groupCounts[length] = count
        } else {
            groupCounts[length] = 1
        }
    }

    if let maxCount = groupCounts.values.max() {
        return maxCount
    } else {
        return 0
    }
}