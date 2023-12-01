import Foundation

func solution(_ myString:String) -> String {
    var ans = ""
    for i in myString {
        guard let ascii = i.unicodeScalars.first?.value else {
            return ""
        }
        if ascii < 108 {
            ans += "l"
        } else {
            ans += String(i)
        }
    }
    return ans
}