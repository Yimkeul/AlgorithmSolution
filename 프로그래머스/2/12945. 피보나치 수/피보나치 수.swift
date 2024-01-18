var memo = [Int: Int]()

func solution(_ n: Int) -> Int {
    return fibo(n) % 1234567
}

func fibo(_ n: Int) -> Int {
    if n == 0 { return 0 }
    else if n == 1 { return 1 }

    if let result = memo[n] {
        return result
    }

    let result = (fibo(n - 1) + fibo(n - 2)) % 1234567
    memo[n] = result
    
    return result
}