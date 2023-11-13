import Foundation

func solution(_ numLog:[Int]) -> String {
    var startPoint = numLog[0]
    var before = startPoint
    var ans = ""
    
    for i in 1 ..< numLog.count {
        var result = numLog[i]    
        if result == before + 1 {
            ans += "w"
            before = result
        } else if result == before - 1 {
            ans += "s"
            before = result
        } else if result == before + 10 {
            ans += "d"
            before = result
        } else {
            ans += "a"
            before = result
        }
        
    }
    return ans
}
