import Foundation

let n = Int(readLine()!)!
var member = readLine()!.split { $0 == " " }.map { Int($0)! }
member = member.sorted()
for i in 1..<member.count {
  member[i] = member[i] + member[i - 1]
}
var sums = member.reduce(0, +)
print(sums)
