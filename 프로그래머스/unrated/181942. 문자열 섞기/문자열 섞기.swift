import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let cnt = str1.count
    var ans = ""
    
    for i in 0 ..< cnt {
        var a = str1.index(str1.startIndex, offsetBy: i)
        var b = str2.index(str2.startIndex, offsetBy: i)
        ans += String(str1[a])
        ans += String(str2[b])
    }
    
    return ans
}