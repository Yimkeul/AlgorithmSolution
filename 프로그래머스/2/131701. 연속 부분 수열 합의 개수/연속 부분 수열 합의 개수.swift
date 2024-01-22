import Foundation

func solution(_ elements:[Int]) -> Int {
    
    let n = elements.count
    var prefixSum = Array(repeating: 0, count: n * 2 + 1)
    var answerSet = Set<Int>()

    // 원형 수열을 두 번 이어붙여서 새로운 배열 생성
    let doubledElements = elements + elements

    // 접두사 합 배열 계산
    for i in 1..<(n * 2 + 1) {
        prefixSum[i] = prefixSum[i - 1] + doubledElements[i - 1]
    }

    // 연속 부분 수열의 합 계산
    for length in 1...n {
        for start in 0..<n {
            let end = start + length
            let sum = prefixSum[end] - prefixSum[start]
            answerSet.insert(sum)
        }
    }

    return answerSet.count
}

