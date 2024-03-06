import Foundation

func solution(_ cards:[Int]) -> Int {
    var opened: Set<Int> = []
    var len:[Int] = []
    
    for i in 0 ..< cards.count {
        if opened.contains(i) { continue }
        var now = i
        var count = 0 
        while !opened.contains(now) {
            opened.insert(now)
            count += 1
            now = cards[now] - 1
        }
        len.append(count)
    }
    len = len.sorted  { $0 > $1 }
    

    
    return len.count > 1 ? len[0] * len[1] : 0
}
