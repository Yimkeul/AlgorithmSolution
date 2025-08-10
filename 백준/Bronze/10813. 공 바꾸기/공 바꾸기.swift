import Foundation

let NM = readLine()!.split { $0 == " "}.map { Int($0)! }
let N = NM[0]
let M = NM[1]

var busket = Array(1...N)

for _ in 0 ..< M {
    let IJ = readLine()!.split { $0 == " "}.map { Int($0)! }
    let I = IJ[0] - 1
    let J = IJ[1] - 1

    let temp = busket[I]
    busket[I] = busket[J]
    busket[J] = temp
}

for i in 0 ..< busket.count {
    print(busket[i], terminator:  " ")
}