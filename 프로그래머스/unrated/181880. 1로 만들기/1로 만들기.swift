import Foundation

func solution(_ num_list:[Int]) -> Int {
    var ans = 0
    for i in num_list {
        ans += logic(num: i)
    }
    return ans
}

func logic (num: Int) -> Int {
    var cnt = 0
    var target = num
    
    while target != 1{
        if target % 2 == 0 {
            target /= 2
        } else {
            target -= 1
            target /= 2
        }    
        cnt += 1
    }
    // print("logic \(cnt)")
    return cnt
}