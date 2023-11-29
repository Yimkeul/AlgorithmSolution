import Foundation

func solution(_ arr: [Int]) -> [Int] {
    let len = arr.count
    var target = 1
    var ans = arr
    
    while target < len {
        target *= 2
    }
    ans.append(contentsOf: Array(repeating: 0, count : target - len)) 
    return ans
}
