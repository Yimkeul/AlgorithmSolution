let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]

var stack = [Int]()
var answer = ""

private func dfs() {
    if stack.count == M {
        answer += stack.map{ String($0) }.joined(separator: " ")
        answer += "\n"
        return
    }

    for i in 1...N {
        stack.append(i)
        dfs()
        stack.removeLast()
    }
}

dfs()
print(answer)