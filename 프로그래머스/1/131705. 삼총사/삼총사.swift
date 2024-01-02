import Foundation


func combinationWithRecursion(array: [Int], pickCount: Int, index: Int, tempArray: [Int], combsArray: inout [[Int]]) -> [[Int]] {
    if tempArray.count == pickCount {
        combsArray.append(tempArray)
        return []
    }

    for i in index..<array.count {
        let _ = combinationWithRecursion(array: array, pickCount: pickCount, index: i + 1, tempArray: tempArray + [array[i]], combsArray: &combsArray)
    }

    return combsArray
}

func solution(_ number: [Int]) -> Int {
    var count = 0
    var combiArray:[[Int]] = []
    let _ = combinationWithRecursion(array: number, pickCount: 3, index: 0, tempArray: [], combsArray: &combiArray)
    
    for i in combiArray {
        let sum = i.reduce(0,+)
        if sum == 0 {
            count += 1
        }
    }
    return count
}
