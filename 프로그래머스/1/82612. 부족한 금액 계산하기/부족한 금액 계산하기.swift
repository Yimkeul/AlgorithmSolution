import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var cost = 0
    for i in 1 ... count {
        cost += price * i
    }
    
    return money - cost < 0 ? Int64(cost - money) : Int64(0)
}