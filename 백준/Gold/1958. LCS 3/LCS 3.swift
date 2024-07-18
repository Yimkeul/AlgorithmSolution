// 세 문자열 입력
    let A = Array(readLine()!)
    let B = Array(readLine()!)
    let C = Array(readLine()!)

    // 문자열 길이
    let n = A.count
    let m = B.count
    let l = C.count

    // 3차원 DP 배열 초기화
    var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: l + 1), count: m + 1), count: n + 1)

    // DP 수행
    for i in 1...n {
        for j in 1...m {
            for k in 1...l {
                if A[i-1] == B[j-1] && A[i-1] == C[k-1] {
                    dp[i][j][k] = dp[i-1][j-1][k-1] + 1
                } else {
                    dp[i][j][k] = max(dp[i-1][j][k], dp[i][j-1][k], dp[i][j][k-1])
                }
            }
        }
    }

    // 결과 출력
    print(dp[n][m][l])
