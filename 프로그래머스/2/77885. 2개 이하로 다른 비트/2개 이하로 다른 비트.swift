import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
        var result = [Int64]()
           
           for number in numbers {
               if number % 2 == 0 {
                   result.append(number + 1)
               } else {
                   let bit = number ^ (number + 1)
                   let answer = number + 1 + (bit >> 2)
                   result.append(answer)
               }
           }
           
           return result
    }