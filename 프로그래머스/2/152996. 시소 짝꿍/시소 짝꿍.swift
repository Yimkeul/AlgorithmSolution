import Foundation

func solution(_ weights:[Int]) -> Int64 {
    var result: Int64 = 0
    var countMap = [Double: Int]()
    let ratios = [2.0/3.0, 2.0/4.0, 3.0/4.0]

    for i in weights {
        countMap[Double(i), default: 0] += 1
    }

    for (weight, count) in countMap.sorted(by: { $0.key > $1.key }) {
        if count > 1 {
            result += Int64(count * (count - 1) / 2)
        }

        for ratio in ratios {
            let target = Double(weight) * ratio
            if let targetCount = countMap[target] {
                result += Int64(count * targetCount)
            }
        }
    }

    return result
}