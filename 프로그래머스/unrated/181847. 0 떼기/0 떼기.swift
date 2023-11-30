import Foundation

func solution(_ n_str:String) -> String {
    var ans = n_str
    while ans.first == "0" {
        ans.removeFirst()
    }
    
    return ans
}