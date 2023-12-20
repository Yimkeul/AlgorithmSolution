import Foundation

func counting(_ word: String) -> Bool {
	let babbling = ["aya", "ye", "woo", "ma"]
    var result = ""
    var lastWord = ""
    
    for i in word.map { String($0) } {
        result += i
        // print("for : \(i)")
        // 현재까지의 단어가 발음 가능한 단어에 포함되어있는지 확인
        if babbling.contains(result) && result != lastWord {
            // print("if : \(result)")
            lastWord = result
            // 현재까지의 단어를 초기화 후 다음 Step 으로 넘어간다.
            result = ""
        }
    }
    // print("re :\(result)")
    return result.isEmpty
}

func solution(_ words:[String]) -> Int {
    
    // print(words.map { counting($0) }.filter {$0})
    
    return words.map { counting($0) }.filter { $0 }.count
}
