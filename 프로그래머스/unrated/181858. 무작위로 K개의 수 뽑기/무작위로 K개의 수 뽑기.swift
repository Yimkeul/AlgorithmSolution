import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var ans: [Int] = []
    
    for i in 0 ..< arr.count {
        if ans.contains(arr[i]) == false && ans.count < k {
            ans.append(arr[i])
        }
    }
    
    if ans.count < k {
        for i in ans.count ..< k {
            ans.append(-1)
        }
    }
    
    return ans
}