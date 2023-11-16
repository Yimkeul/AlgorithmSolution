import Foundation

func solution(_ my_string:String) -> [String] {
    var ans:[String] = []
    
    for i in 0 ..< my_string.count {
        ans.append(String(my_string.suffix(my_string.count - i)))
    }
    
    ans = ans.sorted()
    return ans
}