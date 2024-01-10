import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failRate: [Int:Double] = [:]
    var members: [Int:Int] = [:]
    var member = stages.count
    for i in 1 ... N {
        failRate[i] = 0
        members[i] = 0
    }
    
    var stages = stages.sorted()

    for i in stages {
        if let current = failRate[i] {
            failRate[i] = current + 1.0
        } 
        if let current = members[i] {
            members[i] = current + 1
        }
    }
    
    for i in 1...N {
        guard let failed = failRate[i] else {
            continue
        }
        guard let mem = members[i] else {
            continue
        }
        if failed == Double(0) || mem == 0 {
            failRate[i] = Double(0)
        } else {
            failRate[i] = failed / Double(member)    
        }
        
        member -= mem
    }
    
    let sortedKeys = failRate.keys.sorted {
        if failRate[$0]! == failRate[$1]! {
            return $0 < $1
        }
        return failRate[$0]! > failRate[$1]!
    }
    return sortedKeys
}