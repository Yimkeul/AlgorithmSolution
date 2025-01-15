    func solution(_ numbers: [Int]) -> [Int] {
        var stack: [Int] = []
        var answer = Array(repeating: -1, count: numbers.count)
        
        for i in stride(from: numbers.count - 1, through: 0, by: -1) {
            while let last = stack.last, last <= numbers[i] {
                stack.popLast()
            }
            if let last = stack.last {
                answer[i] = last
            }
            stack.append(numbers[i])
        }
        
        return answer
    }