let K = Int(readLine()!)!

// dp[i][0]는 A의 개수, dp[i][1]는 B의 개수
var dp = [(1, 0)] // 초기 상태는 (1, 0)

for i in 1...K {
    let prevA = dp[i-1].0
    let prevB = dp[i-1].1
    
    // A의 개수는 이전 B의 개수와 같고, B의 개수는 이전 A + B의 개수와 같다
    dp.append((prevB, prevA + prevB))
}

// 결과 출력
print(dp[K].0, dp[K].1)
