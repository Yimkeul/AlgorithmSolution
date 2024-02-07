// import Foundation

// func solution(_ topping:[Int]) -> Int {
    
//     var up: [Int] = []
//     var down: [Int] = topping
//     var ans: Int = 0

//     for i in 0 ..< topping.count {
//         if Set(up).count == Set(down).count {
//             ans += 1
//         } 
//         if let firstDown = down.first {
//             up.append(firstDown)
//         }
//             down.removeFirst()
//     }
    
//     return ans
    
// }

import Foundation

func solution(_ topping:[Int]) -> Int {
    if topping.count == 1 {
        return 0
    }
    var answer = 0
    var s1: Set<Int> = []   // 철수
    var s2: Set<Int> = Set(topping)   // 동생
    let maxValue = topping.max()!   // 배열의 최대 크기를 지정하기 위해
    var idxArr = Array(repeating: 0, count: maxValue+5)
    for i in 0..<topping.count {
        idxArr[topping[i]] += 1
    }
    for i in 0..<topping.count-1 {
        s1.insert(topping[i])   // 철수는 토핑 하나 증가        
        idxArr[topping[i]] -= 1 // 해당 토핑의 개수 하나 감소
        if idxArr[topping[i]] <= 0 {	// 해당 토핑의 개수가 0 이하이면, s2에는 해당 토핑이 존재하면 안된다.
            s2.remove(topping[i])	// 동생은 토핑 하나 감소
        }
        if s1.count == s2.count {    // 토핑의 가짓수가 같으면 answer 증가
            answer += 1
        }
    }
    
    return answer
}