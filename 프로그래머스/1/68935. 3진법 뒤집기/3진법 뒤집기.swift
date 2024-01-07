import Foundation

func solution(_ n:Int) -> Int {
    let three = String(n, radix: 3)
    let reversedThree = String(three.reversed())
    return Int(reversedThree, radix: 3)!
}