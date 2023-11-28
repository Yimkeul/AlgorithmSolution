import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var X:[Int] = []
    for i in arr {
        X += Array(repeating: i, count: i)
    }    
    return X
}