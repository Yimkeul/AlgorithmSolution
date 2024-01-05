import Foundation

func solution(_ s: String) -> Int {
    var result = ""
    var currentNumber = ""
    
    for char in s {
        if char.isNumber {
            result.append(char)
        } else {
            currentNumber.append(char)
            if let mappedNumber = mapToNumber(currentNumber) {
                result.append(mappedNumber)
                currentNumber = ""
            }
        }
    }
    
    return Int(result)!
}

func mapToNumber(_ word: String) -> String? {
    switch word {
    case "zero": return "0"
    case "one": return "1"
    case "two": return "2"
    case "three": return "3"
    case "four": return "4"
    case "five": return "5"
    case "six": return "6"
    case "seven": return "7"
    case "eight": return "8"
    case "nine": return "9"
    default: return nil
    }
}