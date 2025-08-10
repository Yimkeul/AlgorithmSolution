import Foundation

var matrix:[[String]] = []

for _ in 0 ..< 5 {
    var input = readLine()!.map { String($0) }
    let emptyValue = 15 - input.count
    for _ in 0 ..< emptyValue {
        input.append(",")
    }
    matrix.append(input)
}

var result = ""

for j in 0 ..< 15{
    for i in 0 ..< 5 {
        result += matrix[i][j]
    }
}


print(result.replacingOccurrences(of: ",", with: ""))
