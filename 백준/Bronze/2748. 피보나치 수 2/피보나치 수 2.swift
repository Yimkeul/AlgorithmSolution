let N = Int(readLine()!)!
    print(fibo(N))

    func fibo(_ x: Int) -> Int {
        if x == 0 { return 0 }
        else if x == 1 { return 1 }
        
        var dp = [Int](repeating: 0, count: x + 1)
        dp[0] = 0
        dp[1] = 1
        
        for i in 2...x {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        
        return dp[x]
    }
