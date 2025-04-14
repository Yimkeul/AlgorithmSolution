import Foundation

func solution(_ number: String, _ k: Int) -> String {
    var count = k
    var stack = [Character]()
    
    for num in number {
        while !stack.isEmpty, stack.last! < num , count != 0 {
            stack.removeLast()
            count -= 1
        }
        stack.append(num)
    }
    
    return String(String(stack).prefix(stack.count - count))
}





























// var stack = [Character]() // 스택을 사용하여 숫자를 저장
//         var removeCount = k       // 제거해야 할 숫자의 개수
        
//         for num in number {
//             // 스택의 마지막 숫자가 현재 숫자보다 작으면 제거
//             while removeCount > 0 && !stack.isEmpty && stack.last! < num {
//                 stack.removeLast()
//                 removeCount -= 1
//             }
//             stack.append(num) // 현재 숫자를 스택에 추가
//         }
        
//         // 남은 숫자를 제거해야 할 경우 처리
//         // (예: "11111"에서 k=2라면 스택에 숫자가 그대로 남아 있을 수 있음)
//         while removeCount > 0 {
//             stack.removeLast()
//             removeCount -= 1
//         }
        
//         return String(stack) // 스택에 남아 있는 숫자를 문자열로 변환하여 반환