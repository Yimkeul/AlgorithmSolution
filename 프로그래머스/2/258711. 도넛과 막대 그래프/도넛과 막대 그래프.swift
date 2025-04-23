import Foundation

func solution(_ edges:[[Int]]) -> [Int] {
 var nodes = Set<Int>()
    var come = Array(repeating: [Int](), count: 1_000_001)
    var outCnt = Array(repeating: 0, count: 1_000_001)
    var comeCnt = Array(repeating: 0, count: 1_000_001)
    var visited = Array(repeating: false, count: 1_000_001)
    
    // 데이터 넣기
    for edge in edges {
        let i = edge[0]
        let j = edge[1]
                
        nodes.insert(i)
        nodes.insert(j)
        
        come[j].append(i)
        comeCnt[j] += 1
        outCnt[i] += 1
    }
        
    var center = 0
    var total = 0
    var bar = 0
    var eight = 0
    
    // 방문 dfs
    func dfs(_ v: Int) {        
        for next in come[v] {
            if !visited[next] {
                visited[next] = true
                dfs(next)
            }
        }
    }
    
    // 중심 찾기
    for i in nodes {
        let comeCnt = comeCnt[i]
        let outCnt = outCnt[i]
        
        if comeCnt == 0 && outCnt > 1 {
            visited[i] = true
            total = outCnt
            center = i
            break
        }
    }
    
    // 막대 모양, 8자 모양 그래프 카운트
    for i in nodes {
        let comeCnt = comeCnt[i]
        let outCnt = outCnt[i]
        
        if !visited[i] {
            if outCnt == 0 {
                visited[i] = true
                bar += 1
                dfs(i)
            }
            
            if comeCnt >= 2 && outCnt == 2 {
                visited[i] = true
                eight += 1
                dfs(i)
            }
        }
    }
        
    return [center, total - bar - eight, bar, eight]
}