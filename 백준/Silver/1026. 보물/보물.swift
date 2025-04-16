    let _ = Int(readLine()!)!
    let A = readLine()!.split { $0 == " "}.map { Int($0)! }
    let B = readLine()!.split { $0 == " "}.map { Int($0)! }
    
    
    let sortedA = A.sorted { $0 < $1 }
    let sortedB = B.sorted { $0 > $1 }
    var ans = 0
    for i in 0 ..< sortedA.count {
        ans += sortedA[i] * sortedB[i]
    }
    print(ans)
