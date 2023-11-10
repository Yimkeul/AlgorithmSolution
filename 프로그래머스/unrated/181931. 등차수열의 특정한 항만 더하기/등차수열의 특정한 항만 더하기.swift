import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var valueAry:[Int] = []
    var ans = 0
    valueAry.append(a)
    for i in 1 ..< included.count {
        valueAry.append(valueAry[i-1] + d)
    }
    
    for i in 0 ..< included.count {
        if included[i] == true {
            ans += valueAry[i]
        }
    }
    
    // print(valueAry)
    return ans
}