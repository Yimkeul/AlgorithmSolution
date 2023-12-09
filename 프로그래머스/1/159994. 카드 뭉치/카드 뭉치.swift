import Foundation
func canFormGoal(_ cards1: [String], _ cards2: [String], _ goal: [String], _ index1: Int, _ index2: Int, _ targetIndex: Int) -> Bool {
    
    if targetIndex >= goal.count {
        return true
    }
    
    var result = false
    
    // 첫 번째 카드 뭉치의 단어를 사용할 수 있는 경우
    if index1 < cards1.count && cards1[index1] == goal[targetIndex] {
        result = result || canFormGoal(cards1, cards2, goal, index1 + 1, index2, targetIndex + 1)
    }
    
    if index2 < cards2.count && cards2[index2] == goal[targetIndex] {
        result = result || canFormGoal(cards1, cards2, goal, index1, index2 + 1, targetIndex + 1)
    }
    
    return result
}

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    if canFormGoal(cards1, cards2, goal, 0, 0, 0) {
        return "Yes"
    } else {
        return "No"
    }
}