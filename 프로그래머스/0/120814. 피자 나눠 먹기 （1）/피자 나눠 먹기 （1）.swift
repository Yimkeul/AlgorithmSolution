import Foundation

func solution(_ n:Int) -> Int {
    let plus = n % 7 != 0 ? 1 : 0
    return n / 7 + plus
}