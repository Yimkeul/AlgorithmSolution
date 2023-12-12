import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    var cnt:Int = 0
    
    for i in 0 ... (t.count - p.count) {
        let start = t.index(t.startIndex, offsetBy : i)
        let end = t.index(start, offsetBy: p.count)
        let subString = Int(t[start..<end])!
        if subString <= Int(p)! { 
            cnt += 1
        }
    }
    
    return cnt
}