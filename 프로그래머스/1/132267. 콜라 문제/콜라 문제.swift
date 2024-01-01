import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var coke:Int = 0
    
    var emptyBottle = n
    
    while (emptyBottle / a > 0) {
        var getCoke = (emptyBottle / a) * b
        emptyBottle = (emptyBottle % a) + getCoke
        coke += getCoke
    }
    
    return coke
}