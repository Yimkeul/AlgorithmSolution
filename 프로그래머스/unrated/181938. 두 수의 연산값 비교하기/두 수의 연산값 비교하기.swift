import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let first = Int(String(a)+String(b))!
    let second = 2*a*b
    
    return max(first,second)
}