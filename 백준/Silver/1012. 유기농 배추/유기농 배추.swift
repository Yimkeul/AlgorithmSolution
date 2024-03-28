func Q_1012() {
    let T = Int(readLine()!)!
    for _ in 0 ..< T {
        let ans = sol()
        print(ans)
    }
}

private func sol() -> Int {
    var answer = 0
    let input = readLine()!.split { $0 == " "}.map {Int($0)!}
    let (M, N, K) = (input[0], input[1], input[2])
    var graph: [[Int]] = Array(repeating: Array(repeating:0 , count:M), count: N)
    for _ in 0 ..< K {
        let position = readLine()!.split { $0 == " "}.map {Int($0)!}
        graph[position[1]][position[0]] = 1
        
    }
    
    for y in 0 ..< N {
        for x in 0 ..< M {
            if graph[y][x] == 1 {
                dfs(y,x, &graph)
                answer += 1
            }
        }
    }
    
     
    return answer
}
private func dfs(_ y: Int, _ x: Int, _ graph: inout[[Int]]) {
   let dx:[Int] = [1, 0, -1, 0]
   let dy:[Int] = [0, 1, 0, -1]
   let h = graph.count
   let w = graph[0].count
   if graph[y][x] == 1 {
       // 방문처리
       graph[y][x] = 0
       for i in 0 ..< 4 {
           let ny = y + dy[i]
           let nx = x + dx[i]
           if ny >= 0 && ny < h && nx >= 0 && nx < w {
               if graph[ny][nx] == 1 {
                   dfs(ny, nx, &graph)
               }
           }
       }
       
   }
}

let _ = Q_1012()