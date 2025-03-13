import Foundation

let NKM = readLine()!.split { $0 == " " }.map { Int($0)! }
let (N, K, M) = (NKM[0], NKM[1], NKM[2])

var graph = [[Int]](repeating: [], count: N + M + 1)
var visited = [Bool](repeating: false, count: N + M + 1)

// 하이퍼튜브를 가상 노드로 추가
for i in 1 ... M {
    let input = readLine()!.split { $0 == " " }.map { Int($0)! }
    let hyperTube = N + i  // 가상 노드 번호
    
    for station in input {
        graph[station].append(hyperTube)
        graph[hyperTube].append(station)
    }
}

func bfs(_ start: Int) -> Int {
    var queue = [(start, 1)] // (현재 역, 현재까지 방문한 역 개수)
    var front = 0 // removeFirst() 최적화

    visited[start] = true
    
    while front < queue.count {
        let (node, count) = queue[front]
        front += 1

        if node == N {
            return count
        }

        for next in graph[node] {
            if !visited[next] {
                visited[next] = true
                if next > N {
                    // 하이퍼튜브 방문: 환승 없이 다음 역 이동
                    queue.append((next, count))
                } else {
                    // 역 방문: 역 개수 증가
                    queue.append((next, count + 1))
                }
            }
        }
    }
    
    return -1
}

print(bfs(1))
