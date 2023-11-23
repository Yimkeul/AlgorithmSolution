import Foundation

func solution(_ my_string:String) -> [String] {
    let temp = my_string.components(separatedBy: " ")
    var ans:[String] = []
    for i in temp {
        if i == "" {
            continue
        } 
        ans.append(i)
    }
    return ans
}