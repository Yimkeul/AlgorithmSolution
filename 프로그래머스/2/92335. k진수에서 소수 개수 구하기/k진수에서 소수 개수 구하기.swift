import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var trans = String(n, radix: k)
    var ary = trans.split { $0 == "0" }.map { Int($0)! }
    var ans:Int = 0
    for i in ary {
        if isPrime(i) {
            ans += 1
        } 
    }
    
    
    return ans
}

func isPrime(_ number: Int) -> Bool {
    guard number > 1 else {
        return false 
    }

    guard number != 2 else {
        return true 
    }

    guard number % 2 != 0 else {
        return false 
    }

    var i = 3
    while i * i <= number {
        if number % i == 0 {
            return false 
        }
        i += 2 
    }

    return true
}