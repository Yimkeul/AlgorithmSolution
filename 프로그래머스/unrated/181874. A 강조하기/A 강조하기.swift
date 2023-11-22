import Foundation

func solution(_ myString:String) -> String {
    var ans = ""
    for i in myString {
        if i == "a" || i == "A" {
            ans += "A"
        } else {
            ans += i.isUppercase ? String(i.lowercased()) : String(i)
        }
    }
    return ans
}