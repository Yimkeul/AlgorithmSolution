import Foundation 

func solution(_ n: Int) -> Int {
    var ans = 0

    if n % 2 == 0 {
        // Even
        for i in 0 ... n {
            if i % 2 == 0 {
                ans += Int(pow(Double(i), 2))
            }
        }
    } else {
        // Odd
        for i in 0 ... n {
            if i % 2 == 1 {
                ans += i
            }
        }
    }

    return ans
}
