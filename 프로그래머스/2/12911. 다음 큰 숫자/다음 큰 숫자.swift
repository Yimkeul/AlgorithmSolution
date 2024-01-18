import Foundation

func solution(_ n:Int) -> Int
{
    
    let oneCount = String(n, radix: 2).filter {$0 == "1"}.count
    
    var num = n
    while true {
        num += 1
        var numCount = String(num, radix: 2).filter {$0 == "1"}.count
        if oneCount == numCount {
            return num
        }
    }
    
    
}