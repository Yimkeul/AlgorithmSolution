import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let totalTiles = brown + yellow

    for width in 3...totalTiles {
        if totalTiles % width == 0 { 
            let height = totalTiles / width
            if (width - 2) * (height - 2) == yellow {
                return [max(width, height), min(width, height)]
            }
        }
    }
    return []
}
