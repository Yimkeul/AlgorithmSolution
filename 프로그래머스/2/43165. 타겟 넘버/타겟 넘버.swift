import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var answer = 0
    
    func dfs(index: Int, currentSum: Int) {
        if index == numbers.count {
            if currentSum == target {
                answer += 1
            }
            return 
        }
        
        dfs(index: index + 1, currentSum: currentSum + numbers[index])
        
        dfs(index: index + 1, currentSum: currentSum - numbers[index])
    }
    dfs(index: 0, currentSum : 0)
    
    
    return answer
}
