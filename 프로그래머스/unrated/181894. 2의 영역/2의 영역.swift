import Foundation

func solution(_ arr:[Int]) -> [Int]  {
    var ans:[Int] = []
    for i in 0 ..< arr.count {
        if arr[i] == 2 {
            ans.append(i)
        }
    }
    guard let start = ans.first else {
        return [-1]
    }
    
    guard let last = ans.last else {
        return [-1]
    }
    
    return Array(arr[start ... last])
    
}