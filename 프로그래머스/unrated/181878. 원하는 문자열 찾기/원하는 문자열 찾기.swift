import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let myString = myString.lowercased()
    let pat = pat.lowercased()
    
    
    return myString.contains(pat) ? 1 : 0
}