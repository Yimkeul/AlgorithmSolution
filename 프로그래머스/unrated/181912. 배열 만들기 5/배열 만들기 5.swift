import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var ans:[Int] = []
    for i in intStrs {
        var ansValue = ""
        for j in s ..< (s + l) {
            let temp = i.index(i.startIndex, offsetBy: j)
            let target = String(i[temp])
            ansValue += target
        }
        let target = Int(ansValue)!
        if target > k {
            ans.append(target)    
        }
        
    }
    return ans
}