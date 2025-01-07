import Foundation

func solution(_ citations:[Int]) -> Int {
    var ans = 0
    var over = 0
    var under = 0
    
    for h in 0 ..< citations.max()! {
        over = citations.filter { $0 >= h }.count
        under = citations.filter { $0 < h }.filter { $0 <= h }.count
        
        if h <= over && citations.count - over == under {
            ans = max(h,ans)
        }
        // print(citations.filter { $0 < h }.filter { $0 <= h })
        // print(h, over, citations.count - over, under, ans)
    }
    return ans
}