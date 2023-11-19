import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    let a = slicer[0]
    let b = slicer[1]
    let c = slicer[2]
    switch n {        
        case 1: 
            print("1")
            return Array(num_list.prefix(b + 1))
        case 2: 
            print("2")
            return Array(num_list[a ..< num_list.count])
        case 3: 
            print("3")
            return Array(num_list[a ... b])
        case 4: 
            print("4")
            return stride(from: a, to: b + 1, by: c).map { num_list[$0] }
        default:
            return []
    }
    return []
}