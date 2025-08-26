let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var nameDict: [String: Int] = [:]
var numberDict: [Int: String] = [:]

for i in 1...n {
    let name = readLine()!
    nameDict[name] = i
    numberDict[i] = name
}

for _ in 0..<m {
    let name = readLine()!
    if let number = Int(name) {
        print(numberDict[number]!)
    } else {
        print(nameDict[name]!)
    }
}