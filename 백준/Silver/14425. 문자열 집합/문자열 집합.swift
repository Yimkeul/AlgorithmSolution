import Foundation

let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
let (N, M) = (NM[0], NM[1])

var sets = Set<String>()
var ans = 0
for _ in 0..<N {
  sets.insert(String(readLine()!))
}

for _ in 0..<M {
  let input = readLine()!
  ans = sets.contains(input) ? ans + 1 : ans
}
print(ans)
