import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk:[Int] = []
    var fin = arr.count
    var start = 0
    
    while start != fin {
        if stk.isEmpty {
            stk.append(arr[start])
            start += 1
        } else {
            var stkLastValue = stk[stk.count - 1]
            if stkLastValue < arr[start] {
                stk.append(arr[start])
                start += 1
            } else {
                stk.popLast()
            }
        }
        // print(stk)
    }
    
    
    
    
    return stk
}