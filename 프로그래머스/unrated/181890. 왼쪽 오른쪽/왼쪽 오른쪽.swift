import Foundation

func solution(_ str_list:[String]) -> [String] {
    
    for i in 0 ..< str_list.count {
        if str_list[i] == "l" {
            return Array(str_list[..<i])
        } else if str_list[i] == "r" {
            return Array(str_list[(i + 1)...])
        }
        
    }
    return []
}