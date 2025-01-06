import Foundation

func solution(_ elements: [Int]) -> Int {
    var sums = Set<Int>() // 중복 제거를 위한 Set
    let n = elements.count

    // 배열을 두 번 이어 붙여 원형 배열처럼 처리
    let extendedElements = elements + elements

    // 슬라이딩 윈도우를 사용해 부분 수열 합 계산
    for length in 1...n {
        var currentSum = extendedElements[0..<length].reduce(0, +) // 초기 합 계산
        sums.insert(currentSum)

        for start in 1..<n {
            currentSum = currentSum - extendedElements[start - 1] + extendedElements[start + length - 1]
            sums.insert(currentSum)
        }
    }

    return sums.count
}
