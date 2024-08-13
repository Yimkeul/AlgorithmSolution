import Foundation

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
        var queue = [(word: String, depth: Int)]() // 단어와 변환 횟수를 저장하는 큐
        var ischeck = [String: Bool]()

        if !words.contains(target) {
            return 0
        }

        for word in words {
            ischeck[word] = false
        }

        queue.append((begin, 0)) // 시작 단어와 깊이(0)를 큐에 추가

        func bfs() -> Int {
            while !queue.isEmpty {
                let (currentWord, currentDepth) = queue.removeFirst()

                // 타겟 단어에 도달하면 변환 횟수를 반환
                if currentWord == target {
                    return currentDepth
                }

                // 가능한 다음 단어들을 찾아 큐에 추가
                for word in words {
                    if !ischeck[word]! && canTransform(currentWord, word) {
                        ischeck[word] = true
                        queue.append((word, currentDepth + 1))
                    }
                }
            }
            return 0 // 타겟 단어에 도달할 수 없는 경우 0 반환
        }

        // 두 단어가 변환 가능한지 확인하는 함수 (한 글자만 다르면 변환 가능)
        func canTransform(_ word1: String, _ word2: String) -> Bool {
            let w1 = Array(word1)
            let w2 = Array(word2)
            var diffCount = 0

            for i in 0..<w1.count {
                if w1[i] != w2[i] {
                    diffCount += 1
                }
                if diffCount > 1 {
                    return false
                }
            }
            return diffCount == 1
        }

        return bfs()
    }