import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var ans = 0
    var visited = [Bool](repeating: false, count: n)
    
    func dfs(_ index: Int) {
        visited[index] = true
        for i in 0 ..< n {
            if computers[index][i] == 1 && visited[i] == false {
                dfs(i)
            }
        }
    }
    
    for i in 0 ..< n {
        if !visited[i] {
            ans += 1
            dfs(i)
        }
    }
    
    return ans
}

