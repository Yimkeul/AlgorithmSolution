import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let lastIndex = num_list.count - 1 
    let beforeLastIndex = num_list.count - 2
    let lastValue = num_list[lastIndex] > num_list[beforeLastIndex] ? num_list[lastIndex] - num_list[beforeLastIndex]  : num_list[lastIndex] * 2
    
    var ans = num_list
    ans.append(lastValue)
    
    return ans
}