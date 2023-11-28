import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var X:[Int] = []
    for i in 0 ..< flag.count {
        if flag[i] == true {
            X += Array(repeating: arr[i] , count: arr[i] * 2)
        } else {
            for i in 0 ..< arr[i] {
                X.popLast()
            }
        }
    }
    return X
}