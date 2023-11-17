import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
    
    var ans:[Int] = []
    
    for i in end_num ... start {
        ans.append(i)
    }
    
    
    
    return ans.reversed()
}