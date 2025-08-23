import Foundation

let ISMN = readLine()!.map { String($0) }
let miss = ISMN.firstIndex { $0 == "*" } ?? 0

var value = 0
var multi = miss % 2 == 0 ? 1 : 3
for i in 0..<ISMN.count {
  if i == miss {
    continue
  } else if i % 2 == 0 {
    value += Int(ISMN[i])!
  } else if i % 2 != 0 {
    value += Int(ISMN[i])! * 3
  }
}

for i in 0..<10 {
  if (value + (multi * i)) % 10 == 0 {
    print(i)
  }
}
