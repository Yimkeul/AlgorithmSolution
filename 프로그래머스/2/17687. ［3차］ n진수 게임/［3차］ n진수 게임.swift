import Foundation

    func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
        var allResult = [String]()
        var ans = ""
        for i in 0 ..< t*m {
            let tell = String(i, radix: n).map { String($0) }
            allResult += tell
        }
        
        for i in 0 ..< allResult.count {
            if i % m == (p - 1)  && ans.count < t{
                ans += allResult[i].uppercased()
            }
        }
        
        return ans
    }