import Foundation    

func solution(_ n:Int, _ k:Int) -> Int {
        let change = String(n, radix: k).split { $0 == "0"}.map { Int($0)! }
        
        let filtered = change.filter { isPrimeNumber($0) }
        
        
        return filtered.count
    }
    
    func isPrimeNumber(_ n:Int) -> Bool {
        if n < 2 {
            return false
        }
        for i in 2 ..< Int(sqrt(Double(n)) + 1) {
            if n % i == 0 { return false}
        }
        return true
    }