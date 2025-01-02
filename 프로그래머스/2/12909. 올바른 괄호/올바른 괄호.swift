import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = true
    
    var galhos = s.map { String($0) }
    
    var stack:[String] = []
    
    for s in galhos {
        if s == "(" {
            stack.append("(")
        } else {
            if stack.isEmpty {
                return false
            } else {
                stack.removeLast()
            }
        }
    }
    
    ans = stack.isEmpty ? true : false
    
    return ans
}