import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var ans: [String] = players
    var playerIndices: [String: Int] = [:]

    // 딕셔너리에 플레이어 인덱스 채우기
    for (index, player) in players.enumerated() {
        playerIndices[player] = index
    }

    for i in callings {
        if let index = playerIndices[i], index > 0 {
            // 현재 플레이어를 그 앞의 플레이어와 스왑
            let swap = ans[index - 1]
            ans[index - 1] = i
            ans[index] = swap

            // 새로운 인덱스로 딕셔너리 업데이트
            playerIndices[i] = index - 1
            playerIndices[swap] = index
        }
    }

    return ans
}
