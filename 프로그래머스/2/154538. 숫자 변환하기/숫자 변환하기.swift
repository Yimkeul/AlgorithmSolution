import Foundation

func solution(_ x: Int, _ y: Int, _ n: Int) -> Int {
    // 현재 탐색 중인 노드 집합
    var currentLevel: Set<Int> = [x]
    var visited: Set<Int> = [x] // 방문한 노드 기록
    var depth = 0 // 현재 뎁스(연산 횟수)
    
    while !currentLevel.isEmpty {
        // 목표 값이 현재 레벨에 있는 경우, 최소 연산 횟수 반환
        if currentLevel.contains(y) {
            return depth
        }
        
        // 다음 레벨을 저장할 집합
        var nextLevel: Set<Int> = []
        
        for current in currentLevel {
            // 가능한 다음 상태를 계산
            for next in [current + n, current * 2, current * 3] {
                // 유효한 상태(next <= y)이며 방문하지 않은 경우
                if next <= y && !visited.contains(next) {
                    visited.insert(next)
                    nextLevel.insert(next)
                }
            }
        }
        
        // 현재 레벨을 갱신
        currentLevel = nextLevel
        depth += 1 // 뎁스 증가
    }
    
    // 목표 값에 도달하지 못한 경우
    return -1
}
