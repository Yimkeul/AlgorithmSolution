import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var ans:[Int] = []
    for interval in intervals {
        let a = interval[0]
        let b = interval[1]
        var temp = arr[ a ... b]
        for i in temp {
            ans.append(i)
        }
        
    }
    return ans
}