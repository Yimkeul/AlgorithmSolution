import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    // 결과 행렬의 크기: arr1의 행 개수 x arr2의 열 개수
    let rows = arr1.count
    let cols = arr2[0].count
    let inner = arr2.count // arr1의 열 개수와 arr2의 행 개수 (공통 크기)
    
    var result = [[Int]](repeating: [Int](repeating: 0, count: cols), count: rows)
    
    // 행렬의 곱셈
    for i in 0..<rows {
        for j in 0..<cols {
            for k in 0..<inner {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    
    return result
}
