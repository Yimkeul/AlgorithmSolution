import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var ans = 0
    for i in numbers {
        ans += i
        if ans > n {
            return ans
        }
    }
    return 0
}