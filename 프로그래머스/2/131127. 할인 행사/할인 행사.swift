import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var dic = [String: Int]()
    
    for i in 0 ..< want.count {
        dic[want[i]] = number[i]
    }
    
    var ans = 0
    
    var find = false
    
    for i in 0 ... discount.count - 10 {
        var copydic = dic
        for j in i ..< i + 10 {
            if copydic[discount[j]] != nil {
                copydic[discount[j]]! -= 1
            }
        }
        
        find = !copydic.values.contains { $0 > 0 }
        
        if find {
            ans +=  1
        }
    }
    
    
    
    return ans
}