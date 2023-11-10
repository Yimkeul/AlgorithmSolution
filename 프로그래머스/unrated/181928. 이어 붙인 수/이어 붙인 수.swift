import Foundation

func solution(_ num_list:[Int]) -> Int {
    var oddAry: [Int] = []
    var evenAry: [Int] = []
    for i in num_list {
        if i%2 == 0 {
            evenAry.append(i)
        } else {
          oddAry.append(i)  
        }
    }
    
    var oddString = ""
    var evenString = ""
    
    for i in oddAry {
        var temp = String(i)
        oddString += temp
    }
    for i in evenAry {
        var temp = String(i)
        evenString += temp
    }
    
    return Int(oddString)! + Int(evenString)!

    // return 0
}