import Foundation
func generateNumbers(_ digits: [Int]) -> [Int] {
    guard !digits.isEmpty else {
        return []
    }
    
    var result = [Int]()
    
    // 재귀 함수를 이용하여 숫자 조합 생성
    func generateHelper(_ current: Int, _ remainingDigits: [Int]) {
        // 결과에 현재 숫자 추가
        if current != 0 {
            result.append(current)
        }
        
        // 남은 숫자를 모두 시도하여 조합 생성
        for (index, digit) in remainingDigits.enumerated() {
            var newRemainingDigits = remainingDigits
            newRemainingDigits.remove(at: index)
            generateHelper(current * 10 + digit, newRemainingDigits)
        }
    }
    
    generateHelper(0, digits)
    
    return result
}

func isPrimeNumber(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if n % i == 0 { return false }
    }
    return true
}

func solution(_ numbers:String) -> Int {
    var num = [Int]()
    for i in numbers {
        let char = Int(String(i))!
        num.append(char)   
    }
    let total:[Int] = generateNumbers(num)
    let temp: Set<Int> = Set(total)
    // print(temp)
    var ans:Int = 0
    for i in temp {
        if isPrimeNumber(i) {
            // print(i)
            ans += 1
        }
    }
    
    return ans
}