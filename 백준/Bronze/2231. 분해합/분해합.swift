import Foundation

let N = Int(readLine()!)!
var answer = 0

func digitSum(_ x: Int) -> Int {
    return String(x).map { Int(String($0))! }.reduce(0, +)
}

for i in 1..<N {
    if i + digitSum(i) == N {
        answer = i
        break
    }
}

print(answer)
