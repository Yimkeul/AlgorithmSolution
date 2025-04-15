    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, m) = (nm[0], nm[1])
    var result = [Int]()

    func dfs(_ start: Int) {
        if result.count == m {
            print(result.map { String($0) }.joined(separator: " "))
            return
        }

        if start <= n {
            for i in start...n {
                result.append(i)
                dfs(i + 1) // 다음 숫자는 현재보다 큰 수부터
                result.removeLast() // 백트래킹
            }
        }
        
    }

    dfs(1)