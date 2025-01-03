import Foundation

func solution(_ s:String) -> Int{
    var answer:Int = -1
    var stack = [String]()
    var strings = s.map { String($0) }
    
    var index = 0 
    
    for _ in 0 ..< strings.count {
        var now = strings[index]
        if stack.isEmpty {
            stack.append(now)    
        } else {
            var stackLastValue = stack.last!
            if now == stackLastValue {
                stack.removeLast()
            } else { 
                stack.append(now)
            }
        }
        index += 1
        // print("test : \(stack)")
    }
    
    answer = stack.isEmpty ? 1 : 0
    
    return answer
}