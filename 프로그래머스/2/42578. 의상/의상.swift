import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic = [String: Int]()
    
    for clothe in clothes {
        if dic[clothe[1]] == nil {
            dic[clothe[1]] = 1
        } else {
            dic[clothe[1]]! += 1
        }
    }
    
    var ans = dic.values.map { $0 + 1 }.reduce(1,*) - 1

    
    
    return ans
}
