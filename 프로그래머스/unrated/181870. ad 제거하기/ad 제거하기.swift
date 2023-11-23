import Foundation

func solution(_ strArr:[String]) -> [String] {
    var ans:[String] = []
    for i in strArr {
        if i.contains("ad") {
            continue
        } else {
            ans.append(i)
        }
    }
    return ans
}