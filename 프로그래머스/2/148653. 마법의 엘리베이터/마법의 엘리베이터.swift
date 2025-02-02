import Foundation

func solution(_ storey:Int) -> Int {
        
        var nums = String(storey).map { String($0) }.map { Int($0)! }
        var ans = 0
        nums = nums.reversed()
        nums.append(0)
        
        for i in 0 ..< nums.count {
            if nums[i] < 5 {
                ans += nums[i]
            } else if nums[i] > 5{
                ans += (10 - nums[i])
                nums[i + 1] += 1
            } else {
                if nums[i + 1] >= 5 {
                    ans += (10 - nums[i])
                    nums[i + 1] += 1
                } else {
                    ans += nums[i]
                }
            }
        }
        
        return ans
    }