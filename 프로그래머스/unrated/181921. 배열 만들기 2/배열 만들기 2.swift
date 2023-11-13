import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
 var result: [Int] = []

    for num in l...r {
        if String(num).allSatisfy { $0 == "0" || $0 == "5" } {
            result.append(num)
        }
    }

    return result.isEmpty ? [-1] : result
}