import Foundation

let NM = readLine()!.split { $0 == " "}.map { Int($0)! }
let (N, M) = (NM[0], NM[1])

var A:[[Int]] = []
var B:[[Int]] = []

for _ in 0 ..< N {
    let input = readLine()!.split { $0 == " "}.map { Int($0)! } // M
    A.append(input)
}

for _ in 0 ..< N {
    let input = readLine()!.split { $0 == " "}.map { Int($0)! } // M
    B.append(input)
}

var result:[[Int]] = []

for i in 0 ..< N {
    var temp: [Int] = []
    for j in 0 ..< M {
        temp.append(A[i][j] + B[i][j])
    }
    result.append(temp)
}

for i in 0 ..< N {
    for j in 0 ..< M {
        print(result[i][j], terminator: " ")
    }
    print()
}
