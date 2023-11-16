import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let len = my_string.count
    let start = len - n
    var ans = ""
    for i in start ..< len {
        let temp = my_string.index(my_string.startIndex, offsetBy: i)
        ans += String(my_string[temp])
    }
    return ans
}