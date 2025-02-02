import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var prefixSum = [0]
  
    var ans = [[Int]]()
    for num in sequence {
        prefixSum.append(prefixSum.last! + num)
    }
    
    var left = 0
    var right = 0
    while right < prefixSum.count {
        let sum = prefixSum[right] - prefixSum[left]
        if sum < k {
            right += 1
        } else if sum > k {
            left += 1
        } else {
            ans.append([left, right - 1])
            left += 1
        }
    }
    return ans.sorted { $0[1] - $0[0] < $1[1] - $1[0]}[0]
}