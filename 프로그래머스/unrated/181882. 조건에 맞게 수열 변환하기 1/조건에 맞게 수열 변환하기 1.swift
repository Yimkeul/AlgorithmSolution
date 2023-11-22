import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var temp:[Int] = []
    for i in arr {
        if i >= 50 && i % 2 == 0 {
            temp.append(i / 2)
        } else if i < 50 && i % 2 == 1 {
            temp.append(i * 2)
        } else {
            temp.append(i)
        }
    }
    return temp
}