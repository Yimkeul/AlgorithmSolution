import Foundation

func solution(_ edges: [[Int]]) -> [Int] {
    var answer = [0, 0, 0, 0]

    var exchangeCnts = [Int: [Int]]()
    for edge in edges {
        let a = edge[0]
        let b = edge[1]
        
        if exchangeCnts[a] == nil {
            exchangeCnts[a] = [0, 0]
        }
        if exchangeCnts[b] == nil {
            exchangeCnts[b] = [0, 0]
        }
        
        exchangeCnts[a]![0] += 1
        exchangeCnts[b]![1] += 1
    }
    
    for (key, exchangeCnt) in exchangeCnts {
        if exchangeCnt[0] >= 2 && exchangeCnt[1] == 0 {
            answer[0] = key
        }
        else if exchangeCnt[0] == 0 && exchangeCnt[1] > 0 {
            answer[2] += 1
        }
        else if exchangeCnt[0] >= 2 && exchangeCnt[1] >= 2 {
            answer[3] += 1
        }
    }
    
    answer[1] = (exchangeCnts[answer[0]]![0] - answer[2] - answer[3])

    return answer
}
