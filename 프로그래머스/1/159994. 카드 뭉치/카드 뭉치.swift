import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
       for target in goal {
        var one = 0
        var two = 0
        if cards1.firstIndex(of: target) != nil {
            one = cards1.firstIndex(of: target)!
            // print("cards1 : ", one)
            if one != 0 {
                return "No"
            } else {
                cards1.removeFirst()    
            }
        }
           
        if cards2.firstIndex(of: target) != nil {
            two = cards2.firstIndex(of: target)!
            // print("cards2 : ",two)
            if two != 0 {
                return "No"
            } else {
                cards2.removeFirst()    
            }
        }
       }
    return "Yes"
}