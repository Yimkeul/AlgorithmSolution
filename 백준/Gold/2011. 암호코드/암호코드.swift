    let line = readLine()!.map { Int(String($0))! }
    var dp = Array(repeating: [0, 0], count: line.count)

    if line.first! == 0 {
        dp[0] = [0, 0]
    } else {
        dp[0] = [1, 0]
    }

    for i in 1 ..< line.count {
        let left = line[i - 1]
        let cur = line[i]

        if cur != 0 {
            dp[i][0] = (dp[i - 1][0] + dp[i - 1][1]) % 1000000
        }

        if left > 0 && left * 10 + cur < 27 {
            dp[i][1] = dp[i - 1][0]  % 1000000
        }
    }
    print((dp[line.count - 1][0] + dp[line.count - 1][1]) % 1000000)