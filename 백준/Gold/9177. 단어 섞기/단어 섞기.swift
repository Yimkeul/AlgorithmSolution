let n = Int(readLine()!)!
    for i in 0 ..< n {
        let line = readLine()!.split { $0 == " "}.map { String($0) }
        let result = check(line) ? "yes" : "no"
        print("Data set \(i + 1): \(result)")
    }
    
    func check(_ words: [String]) -> Bool {
        let a = Array(words[0])
        let b = Array(words[1])
        let c = Array(words[2])
        
        let n = a.count
        let m = b.count
        
        if n + m != c.count {
            return false
        }
        
        var dp = Array(repeating: Array(repeating: false, count: m + 1), count: n + 1)
        dp[0][0] = true
        
        for i in 0...n {
            for j in 0...m {
                if i > 0 && a[i - 1] == c[i + j - 1] {
                    dp[i][j] = dp[i][j] || dp[i - 1][j]
                }
                if j > 0 && b[j - 1] == c[i + j - 1] {
                    dp[i][j] = dp[i][j] || dp[i][j - 1]
                }
            }
        }
        
        return dp[n][m]
    }
