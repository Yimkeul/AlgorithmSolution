import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var ans: [Int] = []
    for i in start_num ... end_num {
        ans.append(i)
    }
    return ans
}