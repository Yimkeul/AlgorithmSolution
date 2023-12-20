import Foundation

func solution(_ ingredient:[Int]) -> Int {
    let burger = [1,2,3,1]
    var stack: [Int] = []
    var ans = 0
    
    for i in ingredient {
        
        stack.append(i)
        
        if stack.count < 4 { continue }
        let n = stack.count
        if Array(stack[n-4..<n]) == burger {
            stack = Array(stack[0..<n-4])
            ans += 1
        }
    }
    return ans
}