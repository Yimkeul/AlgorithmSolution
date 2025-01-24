import Foundation

func solution(_ numbers: String) -> Int {
        // 소수 판별 함수
        func isPrime(_ num: Int) -> Bool {
            if num < 2 { return false }
            for i in 2 ..< Int(sqrt(Double(num)) + 1) {
                if num % i == 0 { return false }
            }
            return true
        }

        // 순열 생성 함수
        func generatePermutations(_ array: [Character], _ current: String, _ visited: inout [Bool], _ results: inout Set<Int>) {
            if !current.isEmpty {
                results.insert(Int(current)!)
            }
            for i in 0..<array.count {
                if !visited[i] {
                    visited[i] = true
                    generatePermutations(array, current + String(array[i]), &visited, &results)
                    visited[i] = false
                }
            }
        }

        // 초기화
        let characters = Array(numbers)
        var visited = [Bool](repeating: false, count: characters.count)
        var results = Set<Int>()

        // 조합 생성 및 소수 판별
        generatePermutations(characters, "", &visited, &results)
        return results.filter { isPrime($0) }.count
    }