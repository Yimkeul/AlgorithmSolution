import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    for i in 1 ..< food.count {
        if food[i] % 2 == 0 {
            result +=  String(repeating: String(i), count: food[i] / 2)
        } else {
            result += food[i] / 2 > 0 ? String(repeating: String(i), count: food[i] / 2) : ""
        }
    }
    var reversed = String(result.reversed())
    
    result += "0"
    result += reversed
    return result
}