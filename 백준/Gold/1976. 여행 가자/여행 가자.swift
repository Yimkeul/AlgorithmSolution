func Q_1976() {


    let N = Int(readLine()!)!
    let _ = Int(readLine()!)!
    var graph: [[Int]] = []
    var visited: [Bool] = Array(repeating: false, count: N)
    var answer: Bool = true
    
    for _ in 0 ..< N {
        graph.append(readLine()!.split { $0 == " " }.map { Int($0)! })

    }
//    print(graph)
    let goal = readLine()!.split { $0 == " " }.map { Int($0)! }
    DFS(goal[0] - 1)
    
    for g in goal {
        if !visited[g - 1] {
            answer = false
            break
        }
    }
    print(answer ? "YES" : "NO")


    func DFS(_ start: Int) {
        visited[start] = true
        for i in 0 ..< N {
            if graph[start][i] == 1 && visited[i] == false {
                DFS(i)
            }
        }
    }
}
let _ = Q_1976()