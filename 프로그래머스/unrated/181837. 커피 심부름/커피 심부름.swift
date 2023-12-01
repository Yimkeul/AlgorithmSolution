import Foundation

func solution(_ order:[String]) -> Int {
    var cost = 0
    
    for i in order {
        if i.contains("americano") {
            cost += 4500
        } 
        
        if i.contains("cafelatte") {
            cost += 5000
        } 
        
        if i == "anything" {
            cost += 4500
        }
    }
    return cost
}