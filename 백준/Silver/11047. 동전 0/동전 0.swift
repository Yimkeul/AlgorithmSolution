import Foundation

let nk = readLine()!.split { $0 == " " }.map { Int($0)! }
var money = [Int]()
for _ in 0..<nk[0] {
  money.append(Int(readLine()!)!)
}

money = money.reversed()
var k = nk[1]

var cnt = 0

for m in money {
  if k == 0 {
    break
  }

  if k / m == 0 {
    continue
  }
  cnt += k / m
  k = k % m
}

print(cnt)