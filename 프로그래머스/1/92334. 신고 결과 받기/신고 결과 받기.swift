import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var dic = [String:Set<String>]()
    var counting = [String:Int]()
    var answer = [Int](repeating: 0, count: id_list.count)
    
    for id in id_list {
            // dic.append((id, []))
        dic[id] = []
    }
    
    for r in report {
        let input = r.split { $0 == " "}.map { String($0) }
        let userID = input[0], targetID = input[1]
        dic[userID]?.insert(targetID)
        // let key = dic.firstIndex { $0.0 == userID }!
        
        
            // dic[key].1.insert(targetID)    
        
        
    }
    
    // print(dic)
    
    
    for (_, targetIDs) in dic {
        // answer.append(targetIDs.count)
        // let key = dic.firstIndex { $0.0 == userID }!
        for targetID in targetIDs {
            // if dic[key].1.contains(targetID) {
                counting[targetID, default: 0] += 1
            // } 
        }
    }
    // print(counting)
    
    
    for (i, userID) in id_list.enumerated() {
        for targetID in dic[userID]! {
            if counting[targetID, default: 0] >= k {
                answer[i] += 1
            }
        }
    }
    
    return answer
}

// 동일유저 중복 x
// k 번 이상 정지, 신고한 유저에게 사실 메일