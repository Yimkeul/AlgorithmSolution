func solution(_ s:String) -> String {
    let array = s.split { $0 == " " }.map { Int($0)! }
    let maxValue = String(array.max()!)
    let minValue = String(array.min()!)
    let ans = minValue + " " + maxValue
    return ans
    
    
}