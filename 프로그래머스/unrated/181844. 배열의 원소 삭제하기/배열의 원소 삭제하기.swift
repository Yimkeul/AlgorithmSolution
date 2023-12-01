import Foundation

func solution(_ arr: [Int], _ delete_list: [Int]) -> [Int] {
    var result = arr
    
    for num in delete_list {
        if let index = result.firstIndex(of: num) {
            result.remove(at: index)
        }
    }
    
    return result
}