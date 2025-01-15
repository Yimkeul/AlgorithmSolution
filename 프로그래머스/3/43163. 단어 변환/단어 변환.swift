import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
        if !words.contains(target) {
            return 0
        }
        
        func isOneCharDiff( _ word1: String, _ word2: String) -> Bool {
            let diffCount = zip(word1, word2).filter { $0 != $1 }.count
            return diffCount == 1
        }
        
        var queue: [(word: String, depth: Int)] = [(begin, 0)]
        var visited = Set<String>()
        visited.insert(begin)
        
        while !queue.isEmpty {
            let (currentWord, depth) = queue.removeFirst()
            if currentWord == target {
                return depth
            }
            
            for word in words {
                if !visited.contains(word) && isOneCharDiff(currentWord, word) {
                    queue.append((word, depth + 1))
                    visited.insert(word)
                }
            }
        }
        
        
        
        return 0
        
        
    }