let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var parent = [Int](0...n)

func find(_ x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(parent[x])
    return parent[x]
}

func merge(_ a: Int, _ b: Int) {
    let a = find(a)
    let b = find(b)
    
    if a == b {
        return
    }
    if a > b {
        parent[a] = b
    } else {
        parent[b] = a
    }
}

func isSameParent(_ a: Int, _ b: Int) -> Bool {
    return find(a) == find(b)
}

var answer = ""

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let isUnion = input[0] == 0, a = input[1], b = input[2]
    if isUnion {
        merge(a, b)
    } else {
        answer += isSameParent(a, b) ? "YES\n" : "NO\n"
    }
}
print(answer)