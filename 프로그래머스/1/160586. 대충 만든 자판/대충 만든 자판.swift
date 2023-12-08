import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var alpaDic: [Character: Int] = [:]
    for key in keymap {
        var index = 1
        for char in key {
            if let count = alpaDic[char] {
                alpaDic[char] = min(count, index)
            } else {
                alpaDic[char] = index
            }
            index += 1
        }
    }
    
    print(alpaDic)
    
    var result:[Int] = []
    var temp:[Int] = []
    for target in targets {
        temp = []
        for char in target {
            if let count = alpaDic[char] {
                temp.append(count)
            } else {
                temp.append(-1)
            }
        }
        if temp.contains(-1){
            result.append(-1)
        } else {
            result.append(temp.reduce(0) {$0 + $1})
        }
        
        
    }
    
    
    
    return result
}