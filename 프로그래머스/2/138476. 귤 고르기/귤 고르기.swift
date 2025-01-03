import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    let sortedTangerine = tangerine.sorted { $0 < $1 }
    var dic = [Int:Int]()
    var K = k
    for tangerine in sortedTangerine {
        dic[tangerine] = (dic[tangerine] ?? 0) + 1
    }
    
    let newDic = dic.sorted { $0.value > $1.value }
    // print(newDic)
    
    var ans = 0
    
    for (key, value) in newDic {
        K -= value
        ans += 1
        if K <= 0 {
            break
        }
        
    }
    
    return ans
}