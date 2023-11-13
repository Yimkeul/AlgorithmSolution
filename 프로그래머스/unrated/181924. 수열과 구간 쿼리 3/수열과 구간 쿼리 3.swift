import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for query in queries {
        let i = query[0]
        let j = query[1]
        print(query)
        
        print("\(i),\(j)")
        result.swapAt(i,j)
    }
    return result
}