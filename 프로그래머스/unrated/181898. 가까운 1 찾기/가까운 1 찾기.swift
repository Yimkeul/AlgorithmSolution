import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    let len = arr.count
    
    var ans:[Int] = []
    
    for i in idx ..< len {
        if arr[i] == 1 {
            ans.append(i)
        } 
    }
    
    
    return ans.isEmpty ? -1 : ans[0]
}