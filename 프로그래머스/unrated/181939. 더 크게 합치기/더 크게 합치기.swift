import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let sa = String(a)
    let sb = String(b)
    let s1 = sa+sb
    let s2 = sb+sa
    let maxi:Int = max(Int(s1)!, Int(s2)!)
    
    return maxi
}