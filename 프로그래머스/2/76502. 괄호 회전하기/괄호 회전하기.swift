// import Foundation

//     func solution(_ s:String) -> Int {
        
//         var input = s
//         var ans = 0
//         for _ in 0 ..< s.count {
//             ans += isCorrectGalho(input) ? 1 : 0
//             input = turnGalho(input)
//         }
        
//         print(ans)
//         return ans
//     }

//     func isCorrectGalho(_ s: String) -> Bool {
//         var stack = [String]()
        
//         let input = s.map { String($0) }
        
//         for i in input {
//             if stack.isEmpty {
//                 stack.append(i)
//             } else {
//                 let stackLast = stack.last!
//                 if i == ")" && stackLast == "(" {
//                     stack.removeLast()
//                 } else if i == "}" && stackLast == "{" {
//                     stack.removeLast()
//                 } else if i == "]" && stackLast == "[" {
//                     stack.removeLast()
//                 } else {
//                     stack.append(i)
//                 }
//             }
//         }
        
//         return stack.isEmpty
//     }
    
//     func turnGalho(_ s: String) -> String {
//         let basic = s.map { String($0) }
        
//         if basic.count >= 3 {
//             let first = basic[0]
//             let mid = basic[1 ..< basic.count]
//             return mid.joined() + first
//         } else if basic.count == 2 {
//             let first = basic[0]
//             let last = basic[1]
//             return last + first
//         } else {
//             return basic[0]
//         }
//     }

import Foundation

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    
    for char in s {
        if char == "(" || char == "{" || char == "[" {
            stack.append(char) // 여는 괄호는 스택에 추가
        } else {
            // 닫는 괄호가 나왔을 때 스택이 비어있거나 매칭이 안 되면 유효하지 않음
            if stack.isEmpty { return false }
            let last = stack.removeLast()
            if (char == ")" && last != "(") ||
               (char == "}" && last != "{") ||
               (char == "]" && last != "[") {
                return false
            }
        }
    }
    
    // 모든 괄호가 매칭되었으면 스택이 비어 있어야 함
    return stack.isEmpty
}

func solution(_ s: String) -> Int {
    let n = s.count
    var rotated = s
    var count = 0
    
    for _ in 0..<n {
        if isValid(rotated) {
            count += 1
        }
        // 문자열 회전
        rotated.append(rotated.removeFirst())
    }
    
    return count
}
