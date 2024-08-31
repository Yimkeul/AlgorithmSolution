    let N = Int(readLine()!)!
    var dp = [Int](repeating: 0, count: 11)
    dp[1] = 0
    dp[2] = 1
    if N >= 3 {
        for i in 3 ..< N + 1 {
            let m = i / 2
            dp[i] = m * (i - m) + dp[m] + dp[i - m]
        }
    }
    print(dp[N])