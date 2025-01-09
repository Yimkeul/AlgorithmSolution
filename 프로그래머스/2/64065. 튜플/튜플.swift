import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    s.removeFirst()
    s.removeLast()

    var array = [[Int]]()
    var answer = [Int]()
    
    var temp = ""
    for c in s {
        if c == "{" {
            temp = ""
        } else if c == "}" {
            let subArray = temp.split { $0 == ","}.map { Int($0)! }
            array.append(subArray)
        } else {
            temp += String(c)
        }
    }
    
    array.sort { $0.count < $1.count}
    
    for tuple in array {
        for t in tuple {
            if answer.isEmpty {
                answer.append(t)
            } else {
              if !answer.contains(t) {
                  answer.append(t)
              }
            }
        }
    }
    
    return answer
}