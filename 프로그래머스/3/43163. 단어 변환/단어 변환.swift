import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
        if !words.contains(target) {
            return 0
        }
    
        func checkDiffOne(_ word1:String, _ word2:String) -> Bool {
            var count = 0 
            let w1 = word1.map { String($0) }
            let w2 = word2.map {String($0) }
            
            for i in 0 ..< word1.count {
                if w1[i] != w2[i] {
                    count += 1
                }
            }
            return count == 1
        }
    
        func bfs(_ start: String) -> Int {
            var queue = [(start,0)]
            var visited = Set<String>()
            visited.insert(start)
            
            while !queue.isEmpty {
                let (s, depth) = queue.removeFirst()
                if s == target {
                    return depth
                }
                
                for w in words {
                    if !visited.contains(w) && checkDiffOne(s,w) {
                        queue.append((w,depth + 1))
                        visited.insert(w)
                    }
                }
            }
            
            return 0
        }
        return bfs(begin)
}


















//         if !words.contains(target) {
//             return 0
//         }
        
//         func isOneCharDiff( _ word1: String, _ word2: String) -> Bool {
//             let diffCount = zip(word1, word2).filter { $0 != $1 }.count
//             return diffCount == 1
//         }
        
//         var queue: [(word: String, depth: Int)] = [(begin, 0)]
//         var visited = Set<String>()
//         visited.insert(begin)
        
//         while !queue.isEmpty {
//             let (currentWord, depth) = queue.removeFirst()
//             if currentWord == target {
//                 return depth
//             }
            
//             for word in words {
//                 if !visited.contains(word) && isOneCharDiff(currentWord, word) {
//                     queue.append((word, depth + 1))
//                     visited.insert(word)
//                 }
//             }
//         }
        
        