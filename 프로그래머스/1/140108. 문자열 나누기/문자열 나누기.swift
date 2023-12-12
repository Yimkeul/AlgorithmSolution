import Foundation

func solution(_ s: String) -> Int {
    var result = 0
    var remaining = s

    while !remaining.isEmpty {
        var xCount = 0
        var nonXCount = 0

        for char in remaining {
            if char == remaining.first {
                xCount += 1
            } else {
                nonXCount += 1
            }

            if xCount == nonXCount {
                break
            }
        }

        result += 1
        remaining.removeFirst(xCount + nonXCount)
    }

    return result
}
