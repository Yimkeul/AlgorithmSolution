import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var ans = [Int]()
    for command in commands {
        let i = command[0] - 1, j = command[1] - 1, k = command[2] - 1
        let sortedArray = array[i...j].sorted()
        ans.append(sortedArray[k])
    }
    return ans
}