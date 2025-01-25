import Foundation
func solution(_ n: Int) -> [Int] {
    // 삼각형 배열 초기화
    var triangle = Array(repeating: Array(repeating: 0, count: n), count: n)
    let directions = [(1, 0), (0, 1), (-1, -1)] // 아래, 오른쪽, 위 대각선
    var num = 1 // 현재 채울 숫자
    let totalNumbers = (n * (n + 1)) / 2 // 총 숫자 개수
    var x = 0, y = 0 // 시작 위치
    var directionIndex = 0 // 현재 방향 인덱스

    func dfs(_ x: Int, _ y: Int) {
        // 숫자를 채우고 방문 처리
        triangle[x][y] = num
        num += 1

        // 다음 위치 계산
        let nextX = x + directions[directionIndex].0
        let nextY = y + directions[directionIndex].1

        // 다음 위치가 유효하지 않거나 이미 방문한 경우 방향 전환
        if nextX < 0 || nextY < 0 || nextX >= n || nextY >= n || triangle[nextX][nextY] != 0 {
            directionIndex = (directionIndex + 1) % 3
        }

        // 새로운 방향으로 다음 위치 계산
        let newX = x + directions[directionIndex].0
        let newY = y + directions[directionIndex].1

        // 숫자를 모두 채우면 종료
        if num > totalNumbers {
            return
        }

        // DFS 재귀 호출
        dfs(newX, newY)
    }

    // DFS 시작
    dfs(x, y)

    // 2차원 배열을 1차원 배열로 변환
    return triangle.flatMap { $0.filter { $0 != 0 } }
}
