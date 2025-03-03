    let T = Int(readLine()!)!
    var testCases = [Int]()

    for _ in 0..<T {
        testCases.append(Int(readLine()!)!)
    }

    let maxN = testCases.max()!
    var dp = [Int](repeating: 0, count: maxN + 1)
    dp[1] = 1
    if maxN > 1 { dp[2] = 1 }
    if maxN > 2 { dp[3] = 1 }

    if maxN > 3 {
        for i in 4...maxN {
            dp[i] = dp[i - 2] + dp[i - 3]
        }
    }

    for n in testCases {
        print(dp[n])
    }