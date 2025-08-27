import Foundation

let nm = readLine()!.split { $0 == " " }.map { Int($0)! }

var dict: [String: String] = [:]
for _ in 0..<nm[0] {
  let input = readLine()!.split { $0 == " " }.map { String($0) }
  dict[input[0]] = input[1]
}

for _ in 0..<nm[1] {
  let input = readLine()!
  if let pw = dict[input] {
    print(pw)
  }
}
