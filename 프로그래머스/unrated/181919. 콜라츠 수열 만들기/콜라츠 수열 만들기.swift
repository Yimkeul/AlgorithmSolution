import Foundation

func solution(_ n:Int) -> [Int] {
    var ans:[Int] = []
    var n = n
    ans.append(n)
    while n != 1 {
        if n % 2 == 0 {
            ans.append(isEven(n))
            n = isEven(n)
        }else {
            ans.append(isOdd(n))
            n = isOdd(n)
        }
    }
    
    return ans
}

func isEven(_ n:Int) -> Int {
    return n / 2
}

func isOdd(_ n:Int) -> Int {
    return 3 * n + 1
}