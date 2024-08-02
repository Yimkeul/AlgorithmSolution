    let T = Int(readLine()!)!
    var scores = [0]
    for _ in 0 ..< T {
        scores.append(Int(readLine()!)!)
    }
    var dp = Array(repeating: 0, count: T + 1)
    for i in 1 ..< T + 1 {
        if i == 1 {
            dp[1] = scores[1]
        } else if i == 2 {
            dp[2] = scores[1] + scores[2]
        } else if i == 3 {
            dp[3] = max(scores[3] + scores[1], scores[3] + scores[2])
        } else {
            dp[i] = max(scores[i] + scores[i-1] + dp[i - 3], scores[i] + dp[i-2])
        }
    }
    print(dp[T])