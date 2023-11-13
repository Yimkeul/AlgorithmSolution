import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var ans = ""
    for i in index_list {
        var target = my_string.index(my_string.startIndex, offsetBy: i)
        ans += String(my_string[target])
    }
    return ans
}