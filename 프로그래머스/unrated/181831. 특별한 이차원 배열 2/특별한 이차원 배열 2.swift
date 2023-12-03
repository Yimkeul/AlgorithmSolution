import Foundation

func solution(_ arr:[[Int]]) -> Int {
    for row in 0 ..< arr.count {
        for col in 0 ..< arr.count {
            if arr[row][col] != arr[col][row] {
                return 0
            }
        }
    }
    return 1
}