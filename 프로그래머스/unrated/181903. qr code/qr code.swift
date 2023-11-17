import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var ans:[String] = []
    for i in 0 ..< code.count {
        if i % q == r {
            let index = code.index(code.startIndex, offsetBy: i)
            ans.append(String(code[index]))
        }
    }
    return ans.joined()
}