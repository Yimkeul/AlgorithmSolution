import Foundation

func solution(_ sizes: [[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for size in sizes {
        maxWidth = max(maxWidth, min(size[0], size[1]))
        maxHeight = max(maxHeight, max(size[0], size[1]))
    }
    
    return maxWidth * maxHeight
}

