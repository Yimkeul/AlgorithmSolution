import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var Dict: [Int : Int] = [:]
    for num in [a, b, c, d] {
        Dict[num, default: 0] += 1
    }
    
    var ans = 0
    
    
    let len = String(Dict.count)
    
    switch len {
        case "1":
            let p = Dict.keys.first!
            ans = p * 1111
        case "2":
           let temp = Dict.sorted() { $0.value < $1.value}
            let p = temp[1].key
            let q = temp[0].key
            if Dict.values.max()! == 3{
                ans = Int(pow(Double(10 * p + q),2))
            } else {
                ans = (p + q) * abs(p - q)
            }
        case "3":
            let temp = Dict.sorted() { $0.value < $1.value}
            let q = temp[0].key
            let r = temp[1].key
            let p = temp[2].key
            // print(p,q,r)
            ans = q * r
        case "4":
            let temp = Dict.keys.sorted()
            ans = temp.first!
        default: ans = 0
    }
    
    return ans
}