import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    
    var combiArray:[[Int]] = []
    let _ = combi(nums, 3, 0, [], &combiArray)
    
    for i in combiArray {
        if isDecimal(i) {
            answer += 1
        }
    }
    
    return answer
}

func combi(_ array: [Int], _ pickCount: Int, _ index: Int, _ tempArray: [Int], _ combsArray: inout [[Int]]) -> [[Int]] {
    if tempArray.count == pickCount {
        combsArray.append(tempArray)
        
    } else {
    for i in index ..< array.count {
        let _ = combi(array, pickCount, i + 1, tempArray + [array[i]], &combsArray)
        }    
    }
    return combsArray
}


func isDecimal(_ num: [Int]) -> Bool {
    var sum = num.reduce(0,+)
    if sum <= 1 {
        return false
    }
    
    if sum <= 3 {
        return true
    }
    
    let limit = Int(Double(sum).squareRoot()) + 1
    for i in 2 ..< limit {
        if sum % i == 0 {
            return false
        }
    }
    return true
}