import Foundation
Q_7579()
func Q_7579() {
    // MARK: - Properties
    let nm = readLine()!.split{$0==" "}.map{Int(String($0))!}

    let needMemory = nm[1]
    let appMemoryLists = readLine()!.split{$0==" "}.map{Int(String($0))!}
    let costs = readLine()!.split{$0==" "}.map{Int(String($0))!}
    let maximumCost = costs.reduce(0, +)

    // MARK: - Helpers
    // 여기서 app -1을 한 이유는 app x일 때를 고려했기에,, dp의 값 dp[0] = 전부 0으로 초기화 한 점.
    // 실질적인 앱 선택은 dp[1] 부터 dp[n] 까지입니다.
    func solution() {
        let n = appMemoryLists.count
        var dp = Array(repeating: Array(repeating: 0, count: maximumCost+1), count: n+1)
        defer {print("\(dp[n].firstIndex(where: {$0>=needMemory})!)")}
        for app in 1...n {
            for cost in 0...maximumCost {
                if cost - costs[app-1] >= 0 {
                    dp[app][cost] = dp[app-1][cost - costs[app-1]] + appMemoryLists[app-1]
                }
                dp[app][cost] = max(dp[app][cost], dp[app-1][cost])
            }
        }
    }

    solution()
}
