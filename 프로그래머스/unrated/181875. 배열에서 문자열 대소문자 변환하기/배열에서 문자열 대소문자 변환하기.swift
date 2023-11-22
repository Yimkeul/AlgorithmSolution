import Foundation

func solution(_ strArr:[String]) -> [String] {
    var ans:[String] = []
    for i in 0 ..< strArr.count {
        if i % 2 == 0 {
            ans.append(strArr[i].lowercased())
        } else {
            ans.append(strArr[i].uppercased())
        }
    }
    return ans
}