import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total = brown + yellow
    var hubo = [Int]()
    var div = [Int]()
    
    var yx = [Int]()
    var yy = [Int]()
    var answer = [Int]()
    
    
    for i in 1...total {
        if total % i == 0 {
            hubo.append(i)
        }
    }
    
    for i in 1...yellow {
        if yellow % i == 0 {
            div.append(i)
        }
    }
    let len = div.count
    if len % 2 == 1 {
        for i in 0 ... len / 2 {
            yy.append(div[i] + 2)
        }
        div = div.sorted {$0 > $1}
        for i in 0 ... len / 2 {
            yx.append(div[i] + 2)
        }
    } else {
        for i in 0 ..< len / 2 {
            yy.append(div[i] + 2)
        }
        div = div.sorted {$0 > $1}
        for i in 0 ..< len / 2 {
            yx.append(div[i] + 2)
        }
    }

    for i in 0 ..< yx.count {
        if hubo.contains(yx[i]) && hubo.contains(yy[i]) {
            answer.append(yx[i])
            answer.append(yy[i])
            return answer
            
        }
    }
    
    return answer
}
