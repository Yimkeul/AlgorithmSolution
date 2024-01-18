import Foundation

func solution(_ s:String) -> [Int] {
    var origin = s    
    var originLen = s.count
    var eraseZero = 0
    var count = 0
    
    while origin != "1" {
        var dic = Zero(origin)
        eraseZero += dic.first!.value
        origin = dic.first!.key
        // originLen 갱신
        originLen = origin.count
        // 0 제거 후 이진전환
        origin = String(originLen, radix: 2)
        count += 1
    }
    
    return [count, eraseZero]
}

func Zero(_ origin:String) -> [String:Int]  {
    var temp:String = ""
    var zeroCount:Int = 0
    for i in origin {
        if i == "0" {
            zeroCount += 1
        } else {
            temp += String(i)
        }
    }
    return [temp:zeroCount]
}