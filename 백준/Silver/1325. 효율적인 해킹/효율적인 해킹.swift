import Foundation

let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
let (N, M) = (NM[0], NM[1])

var graph = [[Int]](repeating: [], count: N + 1)

for _ in 0 ..< M {
    let AB = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (A, B) = (AB[0], AB[1])
    graph[B].append(A)  // 신뢰 관계 (B → A, 즉 A가 B를 해킹 가능)
}

func bfs(_ start: Int) -> Int {
    var queue = [start]
    var visited = [Bool](repeating: false, count: N + 1)
    visited[start] = true
    var cnt = 0
    
    var front = 0  // removeFirst() 대신 index 활용
    while front < queue.count {
        let node = queue[front]
        front += 1  // O(1) 연산
        
        for next in graph[node] {
            if !visited[next] {
                visited[next] = true
                cnt += 1
                queue.append(next)
            }
        }
    }
    return cnt
}

var maxValue = 0
var result = [Int]()

for i in 1 ... N {
    let count = bfs(i)
    if count > maxValue {
        maxValue = count
        result = [i]
    } else if count == maxValue {
        result.append(i)
    }
}

print(result.map { String($0) }.joined(separator: " "))
