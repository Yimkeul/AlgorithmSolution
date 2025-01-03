func solution(_ arr:[Int]) -> Int {
    var ans = 1
    for i in 0 ..< arr.count {
        ans = lcm(ans, arr[i])
    }
    
    return ans
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}