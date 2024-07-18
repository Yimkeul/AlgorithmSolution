func Q_11726() {
    let n = Int(readLine()!)!
    func tile(n: Int) -> Int {
        if n == 1 {
            return 1
        }
        
        if n == 2 {
            return 2
        }
        
        var dp = [Int](repeating: 0, count: n + 1)
        dp[1] = 1
        dp[2] = 2
        
        for i in 3...n {
            dp[i] = (dp[i-1] + dp[i-2]) % 10007
        }
        return dp[n]
    }

    let result = tile(n: n)
    print(result)

}
Q_11726()