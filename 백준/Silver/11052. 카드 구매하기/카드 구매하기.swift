    let N = Int(readLine()!)!
    let Pack = readLine()!.split { $0 == " " }.map { Int($0)! }
    var dp = Array(repeating: 0, count: N + 1)

    for i in 1 ... N {
        for j in 1 ... i {
            dp[i] = max(dp[i], dp[i - j] + Pack[j - 1])
        }
    }
    print(dp[N])