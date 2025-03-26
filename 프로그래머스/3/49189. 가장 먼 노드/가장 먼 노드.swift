import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = [[Int]](repeating:[] ,count : n + 1)
    for i in edge {
        let (a,b) = (i[0], i[1])
        graph[a].append(b)
        graph[b].append(a)
    }
    
    
    var visited = [Bool](repeating:false, count : n + 1)
    var depths = [Int]()
    func bfs(_ start: Int)  {
        var queue = [(start, 1)]
        visited[start] = true
        
        while !queue.isEmpty {
            let (node, depth) = queue.removeFirst()
            for n in graph[node] {
                if !visited[n]  {
                    visited[n] = true
                    queue.append((n, depth + 1))
                    depths.append(depth + 1)
                }
            }
        }
    }
    
    bfs(1)
    // print(depths)
    
    let maxDepths = depths.max()!
    
    
    return depths.filter { $0 == maxDepths}.count 
}