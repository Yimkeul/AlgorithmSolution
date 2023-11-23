import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var ans = ""
    for i in my_string {
        if String(i) == alp {
            ans += String(alp.uppercased())
        } else {
            ans += String(i)
        }
        
    }
    return ans
}