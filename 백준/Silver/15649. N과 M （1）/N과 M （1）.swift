let nm = readLine()!.split { $0 == " "}.map { Int($0)! }
let (n,m) = (nm[0], nm[1])
var result = [Int]()
var visited = [Bool](repeating: false, count: n + 1)

func dfs() {
    if result.count == m {
        print(result.map { String($0) }.joined(separator: " "))
        return
    }

    for i in 1...n {
        if !visited[i] {
            visited[i] = true
            result.append(i)
            dfs()
            result.removeLast()
            visited[i] = false
        }
    }
}
dfs()
