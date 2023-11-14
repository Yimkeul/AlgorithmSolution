import Foundation
func solution(_ my_string: String, _ queries: [[Int]]) -> String {
    var result = Array(my_string)
    
    for query in queries {
        let start = query[0]
        let end = query[1]
        
        reverseSubstring(&result, start, end)
    }
    
    return String(result)
}

func reverseSubstring(_ array: inout [Character], _ start: Int, _ end: Int) {
    var i = start
    var j = end
    
    while i < j {
        array.swapAt(i, j)
        i += 1
        j -= 1
    }
}
