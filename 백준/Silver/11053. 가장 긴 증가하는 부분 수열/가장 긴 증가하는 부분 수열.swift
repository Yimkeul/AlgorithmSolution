    let A = Int(readLine()!)!
    let line = readLine()!.split { $0 == " " }.map { Int($0)! }

    var dp = [Int]()
    for i in 0 ..< A {
        dp.append(1)
        for j in 0 ..< i + 1 {
            if line[j] < line[i] {
                dp[i] = max(dp[i], dp[j] + 1)
            }
        }
    }
    print(dp.max()!)