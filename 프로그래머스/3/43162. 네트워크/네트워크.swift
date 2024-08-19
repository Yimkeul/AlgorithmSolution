// import Foundation

// func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//     var parent = [Int](0 ..< n)

//     func find(_ x:Int) -> Int {
//         if parent[x] == x {
//             return x
//         }
//         parent[x] = find(parent[x])
//         return parent[x]
//     }
    
//     func union(_ x: Int, _ y: Int) {
//         let px = find(x)
//         let py = find(y)
//         if px == py { return }
//         if px < py {
//             parent[py] = px
//         } else {
//             parent[px] = py
//         }
//     }
    
    
//     for (idx, computer) in computers.enumerated() {
//         for c in 0 ..< computer.count {
//             if computer[c] == 1 {
//                 union(idx, c)
//             }
//         }
//     }
    
//     let setAry = Set(parent)
    
//     return setAry.isEmpty ? 0 : setAry.count
// }


import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var parent = [Int](0 ..< n)

    func find(_ x:Int) -> Int {
        if parent[x] != x {
            parent[x] = find(parent[x]) // 경로 압축
        }
        return parent[x]
    }
    
    func union(_ x: Int, _ y: Int) {
        let px = find(x)
        let py = find(y)
        if px != py {
            parent[py] = px
        }
    }
    
    // 네트워크 간의 연결 정보를 바탕으로 union 연산 수행
    for (idx, computer) in computers.enumerated() {
        for c in 0 ..< computer.count {
            if computer[c] == 1 && idx != c {
                union(idx, c)
            }
        }
    }

    // 모든 노드의 부모를 한 번 더 찾아서 경로 압축 완료
    for i in 0..<n {
        _ = find(i)
    }
    
    // 경로 압축된 부모 배열에서 고유한 네트워크의 수를 계산
    let setAry = Set(parent)
    
    return setAry.count
}
