import Foundation

func solution(_ n:Int) -> Int {
    let strInt = String(n).map { String($0) }
    let ints = strInt.map { Int($0)! }
    
    
    return ints.reduce(0,+)
}