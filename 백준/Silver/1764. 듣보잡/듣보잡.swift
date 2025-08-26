import Foundation

let nm = readLine()!.split { $0 == " " }.map { Int($0)! }
var setA = Set<String>()
var setB = Set<String>()

for _ in 0..<nm[0] {
  setA.insert(readLine()!)
}

for _ in 0..<nm[1] {
  setB.insert(readLine()!)
}

var result = setA.intersection(setB).sorted()
print(result.count)
result.forEach {
  print($0)
}
