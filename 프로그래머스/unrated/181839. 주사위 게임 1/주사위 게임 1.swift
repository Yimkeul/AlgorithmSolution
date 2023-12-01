import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if (a % 2 == 0 && b % 2 == 0) {
        return abs(a - b)
    } else if (a % 2 == 1 && b % 2 == 1) {
        return Int(pow(Double(a),2) + pow(Double(b),2))
    } else {
        return 2 * (a + b)
    }
    return 0
}