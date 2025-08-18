import Foundation

let N = Int(readLine()!)!
var ans = 0
for _ in 0..<N {
  var setAry = Set<String>()
  var trigger = true
  let word = readLine()!.map { String($0) }
  for i in 0..<word.count {
    if setAry.isEmpty {
      setAry.insert(word[i])
    } else {
      if setAry.contains(word[i]) {
        // print("checkPoint : \(word[i - 1]) - \(word[i])")
        if word[i - 1] != word[i] {
          trigger = false
        }
      } else {
        setAry.insert(word[i])
      }
    }
    // print("checkPoint: \(i) - \(trigger)")
  }
  //   print(word, trigger)
  ans = trigger ? ans + 1 : ans
}

print(ans)
