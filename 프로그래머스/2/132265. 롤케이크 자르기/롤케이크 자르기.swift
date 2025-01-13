import Foundation

func solution(_ topping: [Int]) -> Int {
    var answer = 0
    
    // 왼쪽과 오른쪽의 고유 토핑 종류를 저장할 집합
    var leftSet = Set<Int>()
    var rightMap = [Int: Int]()
    
    // 초기 상태에서 모든 토핑을 오른쪽에 위치
    for t in topping {
        rightMap[t, default: 0] += 1
    }
    
    // 토핑을 하나씩 왼쪽으로 옮기면서 고유 종류 비교
    for t in topping {
        // 왼쪽 집합에 현재 토핑 추가
        leftSet.insert(t)
        
        // 오른쪽에서 현재 토핑의 개수를 감소
        if let count = rightMap[t] {
            if count == 1 {
                rightMap[t] = nil
            } else {
                rightMap[t] = count - 1
            }
        }
        
        // 왼쪽과 오른쪽의 고유 토핑 개수를 비교
        if leftSet.count == rightMap.keys.count {
            answer += 1
        }
    }
    
    return answer
}
