import Foundation

func solution(_ arr: [[Int]]) -> [[Int]] {
    let rowCount = arr.count
    let colCount = arr[0].count
    var result = arr

    if rowCount > colCount {
        // 행의 수가 더 많을 경우, 열의 수를 행의 수와 맞추기 위해 각 행의 끝에 0 추가
        for i in 0..<rowCount {
            result[i] += Array(repeating: 0, count: rowCount - colCount)
        }
    } else if rowCount < colCount {
        // 열의 수가 더 많을 경우, 행의 수를 열의 수와 맞추기 위해 각 열의 끝에 0 추가
        for i in 0..<colCount - rowCount{
            result.append(Array(repeating: 0, count: colCount)) 
        }
    }

    return result
}