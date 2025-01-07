// import Foundation

// func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//     var grid = [[Int]](repeating: [Int](repeating: 0, count: n), count :n)
    
    
//     for i in 0 ..< n {
//         for j in 0 ..< n {
//             if i == j {
//                 grid[i][j] = i + 1
//             } else if i > j {
//                 grid[i][j] = i + 1
//             } else {
//                 grid[i][j] = j + 1
//             }
//         }
//     }
    
//     var RowArray = [Int]()
    
//     for i in grid {
//         RowArray.append(contentsOf: i)
//     }
//     // print(RowArray)
    
//     return Array(RowArray[Int(left)...Int(right)])
// }



import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    
    for index in Int(left)...Int(right) {
        let row = index / n
        let col = index % n
        result.append(max(row, col) + 1)
    }
    
    return result
}
