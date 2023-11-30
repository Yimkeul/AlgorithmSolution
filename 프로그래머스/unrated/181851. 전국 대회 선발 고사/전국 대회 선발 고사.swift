import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var ans:[Int] = rank
    var temp:[Int] = []
    for i in 0 ..< rank.count {
        if attendance[i] == true {
            temp.append(rank[i])
        }
    }
    
    temp = Array(temp.sorted().prefix(3))
    var abc:[Int] = []
    for i in temp {
        for j in 0 ..< rank.count {
            if rank[j] == i {
                abc.append(j)
                break
            }
        }
    }
    
    
    
    return abc[0] * 10000 + abc[1] * 100 + abc[2]
}