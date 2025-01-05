    
    let n = Int(readLine()!)!
    
    var dp = [Int](repeating: Int.max, count : n + 1)
    
    dp[0] = 0
    
    for i in 1 ... n {
        if i >= 3 && dp[i - 3] != Int.max {
            dp[i] = min(dp[i], dp[i - 3] + 1)
        }
        if i >= 5 && dp[i - 5] != Int.max {
                   dp[i] = min(dp[i], dp[i - 5] + 1)
               }
    }
    
    print(dp[n] == Int.max ? -1 : dp[n])