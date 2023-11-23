import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var count = 0
    var currentIndex = myString.startIndex

    while let range = myString[currentIndex...].range(of: pat) {
        count += 1
        // 찾은 부분 이후부터 탐색을 시작하도록 currentIndex를 업데이트
        currentIndex = myString.index(range.lowerBound, offsetBy: 1)
        
        // 만약 currentIndex가 문자열의 끝에 도달하면 종료
        if currentIndex == myString.endIndex {
            break
        }
    }

    return count
}