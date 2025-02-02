import Foundation

func solution(_ sticker:[Int]) -> Int{
    let n = sticker.count
    if n == 1 { return sticker[0] } 
    func dp(_ arr: [Int]) -> Int {
        let len = arr.count 
        if len == 1 { return arr[0] }
        if len == 2 { return max(arr[0], arr[1])}
        
        var dp = [Int](repeating: 0, count: len)
        dp[0] = arr[0]
        dp[1] = max(arr[0], arr[1])
        
        for i in 2 ..< len {
            dp[i] = max(dp[i - 1], dp[i - 2] + arr[i])
        }   
        return dp[len - 1]
    }
            
        let case1 = dp(Array(sticker[0..<n - 1]))
        let case2 = dp(Array(sticker[1..<n]))

    return max(case1, case2)
}