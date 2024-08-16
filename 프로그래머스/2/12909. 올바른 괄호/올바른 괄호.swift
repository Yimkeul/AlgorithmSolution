import Foundation

func solution(_ s:String) -> Bool
{
    var stack = [Character]()
    
    for c in s {
        if c == "(" {
            stack.append("(")
        } else {
            if !stack.isEmpty { 
                stack.popLast() 
            }  else {
                stack.append(")")
            }         
        }
    }
    // print(stack)
    return stack.isEmpty ? true : false
}