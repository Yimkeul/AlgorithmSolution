func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var route: [Int: [Int]] = [:]

    // 그래프 만들기
    for wire in wires {
        if route[wire[0]] != nil {
            route[wire[0]]?.append(wire[1])
        } else {
            route[wire[0]] = [wire[1]]
        }
        
        if route[wire[1]] != nil {
            route[wire[1]]?.append(wire[0])
        } else {
            route[wire[1]] = [wire[0]]
        }
    }
    
    var result = wires.count
    for i in route {
        for j in i.value {
            // ⚠️ 전력망 끊기
            route[i.key] = route[i.key]!.filter({ $0 != j })
            route[j] = route[j]!.filter({ $0 != i.key })
            
            // ✅ 끊어진 노드들로부터 출발하여 두 전력망의 각 송전탑 개수 계산
            // ✅ 두 전력망 각각의 송전탑 개수를 구하고 차이값을 도출하여 절대값 처리
            let distance = abs(dfs(route, i.key).count - dfs(route, j).count)
            
            // 💡 최저 차이값이라면 result에 반영
            result = distance < result ? distance : result
            
            // 🛠️ 전력망 복구
            route[i.key]?.append(j)
            route[j]?.append(i.key)
        }
    }
    
    return result
}

/// dfs 메서드
func dfs(_ arr: [Int: [Int]], _ n: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisitStack: [Int] = [n]
    
    while !needVisitStack.isEmpty {
        let node: Int = needVisitStack.removeLast()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitStack += arr[node] ?? []
    }
    
    return visitedQueue
}