struct State: Hashable {
        let a: Int
        let b: Int
    }

    let ABCD = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (A, B, C, D) = (ABCD[0], ABCD[1], ABCD[2], ABCD[3])
    
    var queue = [(Int, Int, Int)]()
    var visited: Set<State> = []
    
    func bfs(_ a: Int, _ b: Int) -> Int {
        queue.append((a, b, 0))
        visited.insert(State(a: a, b: b))
        
        while !queue.isEmpty {
            let (qa, qb, cnt) = queue.removeFirst()
            
            if (qa, qb) == (C, D) {
                return cnt
            }
            
            let funcs = [
                Fill("A", (qa, qb)),
                Fill("B", (qa, qb)),
                Empty("A", (qa, qb)),
                Empty("B", (qa, qb)),
                Move("A", "B", (qa, qb)),
                Move("B", "A", (qa, qb))
            ]
            
            for (na, nb) in funcs {
                let newState = State(a: na, b: nb)
                if !visited.contains(newState) {
                    queue.append((na, nb, cnt + 1))
                    visited.insert(newState)
                }
            }
        }
        return -1 // 도달할 수 없는 경우
    }
    
    func Fill(_ x: String, _ ab: (Int, Int)) -> (Int, Int) {
        var AB = ab
        switch x {
        case "A":
            AB.0 = A
        case "B":
            AB.1 = B
        default:
            break
        }
        return (AB.0, AB.1)
    }
    
    func Empty(_ x: String, _ ab: (Int, Int)) -> (Int, Int) {
        var AB = ab
        switch x {
        case "A":
            AB.0 = 0
        case "B":
            AB.1 = 0
        default:
            break
        }
        return (AB.0, AB.1)
    }
    
    func Move(_ x: String, _ y: String, _ ab: (Int, Int)) -> (Int, Int) {
        var AB = ab
        switch x {
        case "A":
            if AB.0 <= (B - AB.1) {
                AB.1 += AB.0
                AB.0 = 0
            } else {
                let charge = B - AB.1
                AB.0 -= charge
                AB.1 += charge
            }
        case "B":
            if AB.1 <= (A - AB.0) {
                AB.0 += AB.1
                AB.1 = 0
            } else {
                let charge = A - AB.0
                AB.1 -= charge
                AB.0 += charge
            }
        default:
            break
        }
        return (AB.0, AB.1)
    }
    
    let result = bfs(0, 0)
    print(result)
