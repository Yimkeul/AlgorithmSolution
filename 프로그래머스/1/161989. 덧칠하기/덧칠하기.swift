import Foundation

func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    var ans = 1
    var start = section[0]
    
    if section.count == 1 {
        return 1
    }
    
    for i in 1 ..< section.count {
        if section[i] - start >= m {
            ans += 1
            start = section[i]
        }
    }
    
    return ans
}
