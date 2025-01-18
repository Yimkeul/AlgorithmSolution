import Foundation

    func solution(_ a: [Int], _ b: [Int]) -> Int {
        let a = a.sorted()
        var b = b.sorted()
        var result = 0

        for i in stride(from: a.count - 1, through: 0, by: -1) {
            let num = a[i]
            let last = b.last!
            if last > num {
                _ = b.popLast()
                result += 1
            }
        }

        return result
    }