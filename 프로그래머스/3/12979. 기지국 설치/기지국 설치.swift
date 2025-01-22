import Foundation

func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int {
    var answer = 0
    var currentPosition = 1 // 현재 커버되지 않은 아파트의 시작 지점
    let coverage = 2 * w + 1 // 하나의 기지국이 커버할 수 있는 범위
    
    for station in stations {
        let left = station - w // 현재 기지국의 왼쪽 범위
        if currentPosition < left {
            // 현재 기지국이 커버하지 못하는 구간이 있다면 새로운 기지국 설치
            let gap = left - currentPosition
            answer += (gap + coverage - 1) / coverage
        }
        currentPosition = station + w + 1 // 다음 커버 시작 위치
    }
    
    // 마지막 기지국 이후의 빈 구간 처리
    if currentPosition <= n {
        let gap = n - currentPosition + 1
        answer += (gap + coverage - 1) / coverage
    }
    
    return answer
}
