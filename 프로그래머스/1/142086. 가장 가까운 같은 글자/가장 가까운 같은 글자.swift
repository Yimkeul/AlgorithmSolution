import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int]()
    var lastOccurrence = [Character: Int]()
    
    for (index, char) in s.enumerated() {
        if let lastIndex = lastOccurrence[char] {
            result.append(index - lastIndex)
        } else {
            result.append(-1)
        }
        lastOccurrence[char] = index
    }
    
    
    return result
}