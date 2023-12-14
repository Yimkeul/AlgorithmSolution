import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var ans = 0
    for i in 1 ... number {
        let target = measure(i)
        ans += (target > limit) ? power : target
    }
    
    return ans
}

func measure(_ number: Int) -> Int {
    var result = 0
    for i in 1 ... Int(sqrt(Double(number))) {
        if number % i == 0 {
            result += (i == number / i) ? 1 : 2
        }
    }
    return result
}