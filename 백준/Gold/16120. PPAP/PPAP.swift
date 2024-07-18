func Q_16120() {
    let input = readLine()!
    var stack: [Character] = []

    for char in input {
        stack.append(char)
        
        // "PPAP" 패턴이 있는지 확인
        if stack.count >= 4 &&
           stack[stack.count - 4] == "P" &&
           stack[stack.count - 3] == "P" &&
           stack[stack.count - 2] == "A" &&
           stack[stack.count - 1] == "P" {
            
            // "PPAP"를 "P"로 치환
            stack.removeLast(4)
            stack.append("P")
        }
    }

    // 최종 결과 판단
    if stack == ["P"] {
        print("PPAP")
    } else {
        print("NP")
    }
}

Q_16120()