import Foundation

func solution(_ myString:String) -> [String] {
    let temp = myString.split(separator: "x")
    let ans = temp.sorted()
    // print(ans)
    return ans.map { String($0) }
}