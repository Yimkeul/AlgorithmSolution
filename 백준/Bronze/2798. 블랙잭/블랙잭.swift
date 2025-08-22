import Foundation

let NM = readLine()!.split { $0 == " " }.map { Int($0)! }
let input = readLine()!.split { $0 == " " }.map { Int($0)! }

let (N, M) = (NM[0], NM[1])

let combiResult = combi(input, 3)
let preResult =
  combiResult
  .map { $0.reduce(0, +) }
  .filter { $0 <= M }

let result = preResult.max()!
print(result)

func combi(_ nums: [Int], _ r: Int) -> [[Int]] {
  var result = [[Int]]()

  func combination(_ index: Int, _ nowCombi: [Int]) {
    if nowCombi.count == r {
      result.append(nowCombi)
      return
    }
    for i in index..<nums.count {
      combination(i + 1, nowCombi + [nums[i]])
    }
  }

  combination(0, [])

  return result
}
