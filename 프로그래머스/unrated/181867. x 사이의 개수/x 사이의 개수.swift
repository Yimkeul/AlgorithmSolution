import Foundation

func solution(_ myString:String) -> [Int] {
    let substrings = myString.components(separatedBy: "x")
    let result = substrings.map { $0.count }
    print(substrings, result)
    return result
}