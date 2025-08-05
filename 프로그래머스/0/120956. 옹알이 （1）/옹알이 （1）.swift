import Foundation

func solution(_ babbling:[String]) -> Int {
    let speakables = ["aya", "ye", "woo", "ma"]
    var count = 0

    for word in babbling {
        var temp = word
        for speak in speakables {
            temp = temp.replacingOccurrences(of: speak, with: " ")
        }
        // 모든 발음을 제거한 후 공백만 남으면 발음 가능한 단어
        if temp.trimmingCharacters(in: .whitespaces).isEmpty {
            count += 1
        }
    }

    return count
}
