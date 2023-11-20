import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    let back = num_list[n...]
    print(back)
    let front = num_list[..<n]
    print(front)
    
    return Array(back) + Array(front)
}