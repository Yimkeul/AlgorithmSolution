import Foundation

func solution(_ n:Int) -> Int
{
    var ans: Int = 0
    
    var firstN = n
    var firstNBinary = String(n, radix: 2)
    // print(firstNBinary)
    var firstNCount = firstNBinary.map { String($0) }.filter { $0 == "1"}.count
    // print(firstNCount)
    
    
    
    while true { 
        firstN += 1
        var tempNBinary = String(firstN, radix: 2)
        var tempNCount = tempNBinary.map { String($0) }.filter { $0 == "1" }.count
        if firstNCount == tempNCount {
            ans = firstN
            break
        }
        
    }
    return ans
}