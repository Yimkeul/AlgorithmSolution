import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
        var ans = [Int]()
        var gern_plays = [String: Int]()
        for (index, value) in genres.enumerated() {
            gern_plays[value, default: 0] += plays[index]
        }
        let firstCondition = gern_plays.sorted { $0.1 > $1.1 }.map { $0.key }
        
        var each_gern_id_plays = [String:[(Int,Int)]]()
        for (index, value) in genres.enumerated() {
            each_gern_id_plays[value, default: []].append((index,plays[index]))
        }
        
        for g in each_gern_id_plays {
            var temp = g.value.sorted {
                if $0.1 == $1.1 {
                    return $0.0 < $1.0
                } else {
                    return $0.1 > $1.1
                }
            }
            while temp.count > 2 {
                temp.removeLast()
            }
            each_gern_id_plays[g.key] = temp
        }

        for i in firstCondition {
            let ids = each_gern_id_plays[i]!.map { $0.0}
            ans += ids
        }
        
        return ans
    }