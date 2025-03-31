import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let total = brown + yellow
    
    for width in 3 ... total {
        if total % width == 0 {
            let height = total / width
            if (width - 2) * (height - 2) == yellow {
                return [max(width,height), min(width,height)]
            }
        }
    }
    
    return []
}















//     let totalTiles = brown + yellow

//     for width in 3...totalTiles {
//         if totalTiles % width == 0 { 
//             let height = totalTiles / width
//             if (width - 2) * (height - 2) == yellow {
//                 return [max(width, height), min(width, height)]
//             }
//         }
//     }