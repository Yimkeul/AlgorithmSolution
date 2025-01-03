import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var wordsStack = [String]()
    
    var ans = [0,0]
    
    for i in 0 ..< words.count {
        let step = i % n
        
        var target = words[i]
        
        if wordsStack.contains(target) {
            ans[0] = step + 1
            ans[1] = (i / n) + 1
            break
        } else {
            if !wordsStack.isEmpty {
                let lastStackWord = wordsStack.last!.map { String($0) }.last!
                let targetFirstWord = target.map { String($0) }.first!
                if lastStackWord != targetFirstWord {
                    ans[0] = step + 1
                    ans[1] = (i / n) + 1
                    // print("\(i) - \(lastStackWord) : \(targetFirstWord)")
                    break   
                }
            }
            
            wordsStack.append(words[i])
            
            
        }
        
        
    }
    
    return ans
}