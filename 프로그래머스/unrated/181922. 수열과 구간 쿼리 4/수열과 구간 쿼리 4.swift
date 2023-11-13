import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ans:[Int] = arr
    for query in queries {
        let s = query[0]
        let e = query[1]
        let k = query[2]
        
        for i in s ... e {
            if i % k == 0 {
                ans[i] += 1
            }
        }
        
        // print(ans)
        
        
    }
    return ans
}