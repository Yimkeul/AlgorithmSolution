import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var parent = Array(0..<n)
    
    func find(_ x:Int) -> Int {
        if parent[x] == x {
            return x
        } else {
            parent[x] = find(parent[x])
            return parent[x]
        }
    }
    
    func union(_ a: Int, _ b: Int) {
        let rootA = find(a)
        let rootB = find(b)
        if rootA != rootB {
            parent[rootB] = rootA
        }
    }
    
    var totalCost = 0
    let sortedCosts = costs.sorted { $0[2] < $1[2] }
    
    for edge in sortedCosts {
        let (a,b,cost) = (edge[0],edge[1],edge[2])
        if find(a) != find(b) {
            union(a,b)
            totalCost += cost
        }
    }
    return totalCost
}