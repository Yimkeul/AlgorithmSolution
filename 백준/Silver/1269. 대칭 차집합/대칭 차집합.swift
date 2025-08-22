import Foundation

let AB = readLine()!.split { $0 == " " }.map { Int($0)! }
let setA: Set<Int> = Set(readLine()!.split { $0 == " " }.map { Int($0)! })
let setB: Set<Int> = Set(readLine()!.split { $0 == " " }.map { Int($0)! })

let test1 = setA.subtracting(setB)
let test2 = setB.subtracting(setA)

print(test1.count + test2.count)
