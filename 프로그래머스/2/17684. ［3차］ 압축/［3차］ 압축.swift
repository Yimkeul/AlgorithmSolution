import Foundation

func solution(_ msg:String) -> [Int] {
    // Step 1: 사전 초기화
    var dictionary = [String: Int]()
    let alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    for (index, char) in alphabets.enumerated() {
        dictionary[String(char)] = index + 1
    }
    
    var result = [Int]()
    var currentString = ""
    var nextIndex = 27 // 사전에 추가할 인덱스 번호
    
    // Step 2: 문자열 탐색 및 처리
    for char in msg {
        let nextString = currentString + String(char)
        
        if dictionary[nextString] != nil {
            // 사전에 존재하면 현재 문자열을 확장
            currentString = nextString
        } else {
            // 사전에 없으면 색인 번호 추가 및 사전 확장
            result.append(dictionary[currentString]!)
            dictionary[nextString] = nextIndex
            nextIndex += 1
            currentString = String(char)
        }
    }
    
    // 마지막 남은 문자열 처리
    if !currentString.isEmpty {
        result.append(dictionary[currentString]!)
    }
    
    return result
}
