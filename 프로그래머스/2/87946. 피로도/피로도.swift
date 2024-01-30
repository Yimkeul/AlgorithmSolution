import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
      var visited = Array(repeating: false, count: dungeons.count)
    return dfs(dungeons, &visited, k, 0, 0)
}

func dfs(_ dungeons: [[Int]], _ visited: inout [Bool], _ tried: Int, _ maxCnt: Int, _ cnt: Int) -> Int {
    var m = maxCnt
    for i in dungeons.indices {
        if !visited[i] && tried >= dungeons[i][0] {
            visited[i] = true
            m = dfs(dungeons, &visited, tried - dungeons[i][1], m , cnt + 1)
            visited[i] = false
        }
    }
    return max(m, cnt)
}