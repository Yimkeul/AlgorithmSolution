import Foundation

// func solution(_ a:String, _ b:String) -> String {
//    guard let numA = Decimal(string: a), let numB = Decimal(string: b) else {
//         return "Invalid input"
//     }
//     let result = numA + numB
//     return String(describing: result)
// }

func solution(_ a: String, _ b: String) -> String {
    var result = ""
    var carry = 0
    
    // Make sure both strings have the same length by padding with zeros
    let maxLength = max(a.count, b.count)
    let paddedA = String(repeating: "0", count: maxLength - a.count) + a
    let paddedB = String(repeating: "0", count: maxLength - b.count) + b
    
    // Iterate through digits from right to left
    for (charA, charB) in zip(paddedA.reversed(), paddedB.reversed()) {
        let digitA = Int(String(charA))!
        let digitB = Int(String(charB))!
        
        let sum = digitA + digitB + carry
        let digitSum = sum % 10
        carry = sum / 10
        
        result.insert(Character(String(digitSum)), at: result.startIndex)
    }
    
    // If there is a remaining carry, add it to the result
    if carry > 0 {
        result.insert(Character(String(carry)), at: result.startIndex)
    }
    
    return result
}