import Foundation

func solution(_ n: Int, _ k: Int, _ cmd: [String]) -> String {
    var prev = [Int](0..<n).map { $0 - 1 }
    var next = [Int](0..<n).map { $0 + 1 }
    next[n - 1] = -1
    
    var isDeleted = Array(repeating: false, count: n)
    var deletedStack = [(Int, Int, Int)]()
    var pointer = k
    
    for command in cmd {
        let parts = command.split(separator: " ")
        let op = parts[0]
        
        if op == "U" {
            var x = Int(parts[1])!
            while x > 0 {
                pointer = prev[pointer]
                x -= 1
            }
        } else if op == "D" {
            var x = Int(parts[1])!
            while x > 0 {
                pointer = next[pointer]
                x -= 1
            }
        } else if op == "C" {
            isDeleted[pointer] = true
            deletedStack.append((pointer, prev[pointer], next[pointer]))
            
            if prev[pointer] != -1 {
                next[prev[pointer]] = next[pointer]
            }
            if next[pointer] != -1 {
                prev[next[pointer]] = prev[pointer]
            }
            
            // 현재 포인터 이동
            pointer = (next[pointer] != -1) ? next[pointer] : prev[pointer]
        } else if op == "Z" {
            let (restored, p, n) = deletedStack.removeLast()
            isDeleted[restored] = false
            
            if p != -1 {
                next[p] = restored
            }
            if n != -1 {
                prev[n] = restored
            }
        }
    }
    
    return (0..<n).map { isDeleted[$0] ? "X" : "O" }.joined()
}
