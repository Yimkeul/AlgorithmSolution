func Q_15927() {
    let line = String(readLine()!)

    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        let len = chars.count
        for i in 0..<len / 2 {
            if chars[i] != chars[len - 1 - i] {
                return false
            }
        }
        return true
    }

    func allCharactersSame(_ s: String) -> Bool {
        guard let firstChar = s.first else { return true }
        for char in s {
            if char != firstChar {
                return false
            }
        }
        return true
    }
    
    if isPalindrome(line) {
        if allCharactersSame(line) {
            print(-1)
        } else {
            print(line.count - 1)
        }
    } else {
        print(line.count)
    }


}

Q_15927()