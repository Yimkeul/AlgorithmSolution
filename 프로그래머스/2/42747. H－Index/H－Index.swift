import Foundation

func solution(_ citations:[Int]) -> Int {
    var hindex = 0
    
    let citations = citations.sorted(by: >) 
    
    for i in 0 ..< citations.count {
        if citations[i] >= i + 1 {
            hindex = i + 1
        } else {
            break
        }
    }
    
    return hindex
}
