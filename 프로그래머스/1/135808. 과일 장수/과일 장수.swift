import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    // var score = score.sorted { $0 > $1 }
    // var result = 0
    // while !score.isEmpty {
    //     let box = score.prefix(m)
    //     let min = box.min()!
    //     if box.count == m {
    //         result += min * m
    //         score.removeFirst(m)
    //     } else {
    //         break
    //     }
    // }
    // return result
    var countByGrade = Array(repeating: 0, count: k + 1)
    
    for s in score {
        countByGrade[s] += 1
    }
    
    var result = 0
    
    for grade in stride(from: k, through: 1, by: -1) {
        let boxesToUse = countByGrade[grade] / m
        let remainingApples = countByGrade[grade] % m
        
        result += grade * m * boxesToUse
        countByGrade[grade - 1] += remainingApples
    }
    
    return result
}