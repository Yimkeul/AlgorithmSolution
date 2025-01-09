import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var maxCount = 0
    var visited = [Bool](repeating: false, count: dungeons.count)

    func dfs(_ fatigue: Int, _ count: Int) {
        maxCount = max(maxCount, count)

        for i in 0..<dungeons.count {
            let required = dungeons[i][0]
            let cost = dungeons[i][1]

            if !visited[i] && fatigue >= required {
                visited[i] = true
                dfs(fatigue - cost, count + 1) 
                visited[i] = false 
            }
        }
    }

    dfs(k, 0) 
    return maxCount
}
