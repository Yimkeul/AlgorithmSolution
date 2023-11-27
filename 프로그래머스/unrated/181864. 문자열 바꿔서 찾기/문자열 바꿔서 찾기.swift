import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var temp: String = ""
    for i in myString {
        if i == "A" {
            temp += "B"
        } else {
            temp += "A"
        }
    }
    
    return temp.contains(pat) ? 1 : 0
}