import Foundation

func solution(_ num_list:[Int]) -> Int {
    var multiValue = 1
    var powValue = 0
    for i in num_list {
        multiValue *= i
        powValue += i
    }
    powValue = Int(pow(Double(powValue),2))
    if multiValue < powValue {
        return 1
    }
    return 0
}