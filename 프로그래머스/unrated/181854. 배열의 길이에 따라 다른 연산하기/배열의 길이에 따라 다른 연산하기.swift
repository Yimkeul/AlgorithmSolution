import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var ans = arr
    if arr.count % 2 == 0 {
        for i in 0 ..< arr.count {
            if i % 2 == 1 {
                ans[i] += n 
            }
        }
    } else {
        for i in 0 ..< arr.count {
            if i % 2 == 0 {
                ans[i] += n 
            }
        }
    }
    return ans
}