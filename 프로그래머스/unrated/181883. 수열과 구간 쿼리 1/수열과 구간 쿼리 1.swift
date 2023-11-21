import Foundation

func solution(_ arr: [Int], _ queries:[[Int]]) -> [Int] {
    var ans:[Int] = arr
    for query in queries {
        let s = query[0]
        let e = query[1]
        
        for i in s ... e {
            ans[i] += 1
        }
    }
    return ans
}