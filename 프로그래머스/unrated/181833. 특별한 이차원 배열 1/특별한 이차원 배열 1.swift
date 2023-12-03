import Foundation

func solution(_ n:Int) -> [[Int]] {
    // var ans = [[Int]]()
    // var target = 0
    // for rows in 0 ..< n {
    //     var row = [Int]()
    //     for cols in 0 ..< n {
    //         if rows == cols {
    //             row.append(1)
    //         } else {
    //             row.append(0)
    //         }
    //     }
    //     ans.append(row)
    // }
    // return ans
     var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        result[i][i] = 1
    }
    
    return result
}