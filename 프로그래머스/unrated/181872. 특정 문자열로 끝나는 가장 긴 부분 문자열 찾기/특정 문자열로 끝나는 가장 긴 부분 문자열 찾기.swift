import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    guard let range = myString.range(of: pat, options: .backwards) else {
    return ""
    }
    let endIndex = range.upperBound
    
    return String(myString.prefix(upTo: endIndex))
}