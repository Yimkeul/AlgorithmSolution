import Foundation

func solution(_ names:[String]) -> [String] {
    let temp = stride(from:0, to: names.count, by: 5).map { names[$0] }
    // print(temp)
    return temp
}