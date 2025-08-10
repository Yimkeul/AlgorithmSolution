import Foundation

var maxValue = 0
var (x,y) = (0,0)

for i in 0 ..< 9 {
    let input = readLine()!.split { $0 == " "}.map { Int($0)! }
    for j in 0 ..< input.count {
        if maxValue < input[j] {
            maxValue = input[j]
            x = i
            y = j
        }
    }
}

print("\(maxValue)\n\(x + 1) \(y + 1)")