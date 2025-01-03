import Foundation

func solution(_ cards: [Int]) -> Int {
    var visited = Array(repeating: false, count: cards.count)
    var groupSizes = [Int]()
    
    func dfs(_ index: Int) -> Int {
        var size = 0
        var currentIndex = index
        
        while !visited[currentIndex] {
            visited[currentIndex] = true
            size += 1
            currentIndex = cards[currentIndex] - 1 
        }
        
        return size
    }
    
    for i in 0..<cards.count {
        if !visited[i] {
            let groupSize = dfs(i)
            groupSizes.append(groupSize)
        }
    }
    
    groupSizes.sort(by: >)
    
    if groupSizes.count < 2 {
        return 0 
    }
    
    return groupSizes[0] * groupSizes[1]
}
