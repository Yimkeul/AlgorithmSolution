import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result: [String] = []

    for row in picture {
        var line = ""
        for char in row {
            line += String(repeating: String(char), count: k)
        }
        result.append(contentsOf: Array(repeating: line, count: k))
    }

    return result
}