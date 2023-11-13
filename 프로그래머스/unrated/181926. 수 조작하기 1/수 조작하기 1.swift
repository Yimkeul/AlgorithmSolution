import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var temp = n
    for index in control {
        if index == "w" {
            temp += 1
        } else if index == "s" {
            temp -= 1
        } else if index == "d" {
            temp += 10
        } else {
            temp -= 10
        }        
    }
    
    
    return temp
}