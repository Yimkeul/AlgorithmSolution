import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]
let ary = readLine()!.split(separator: " ").map{Int($0)!}

var preSum:[Int] = [0]
var sum: Int = 0
for i in ary {
    sum += i
    preSum.append(sum)
}

for i in 0 ..< M {
    let line = readLine()!.split(separator: " ").map{Int($0)!}
    let start = line[0] - 1
    let end = line[1]
    print(preSum[end] - preSum[start])
}
