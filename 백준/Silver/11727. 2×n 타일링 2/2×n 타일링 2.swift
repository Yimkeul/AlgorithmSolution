let n = Int(readLine()!)!
    
    if n == 1 {
        print(1)
    } else {
        var dp = [Int](repeating: 0, count : n + 1)
        dp[1] = 1
        dp[2] = 3
        if n > 2 {
            for i in 3 ... n {
                dp[i] = (dp[i-1] + 2 * dp[i-2])%10007

            }
        }
        print(dp[n])
    }