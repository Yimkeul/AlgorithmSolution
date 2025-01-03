func solution(_ n: Int) -> Int {
    var memo = Array(repeating: -1, count: n + 1)
    return fibo(n, &memo)
}

func fibo(_ n: Int, _ memo: inout [Int]) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    
    if memo[n] != -1 {
        return memo[n]
    }
    
    memo[n] = (fibo(n - 1, &memo) + fibo(n - 2, &memo)) % 1234567
    return memo[n]
}
