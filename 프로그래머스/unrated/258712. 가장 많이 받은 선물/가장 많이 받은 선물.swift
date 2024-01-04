import Foundation

func solution(_ friends: [String], _ gifts: [String]) -> Int {
        var answer = 0

        var dict = [String: Int]() // 친구이름에 따른 인덱스 값
        for (index, friend) in friends.enumerated() {
            dict[friend] = index
        }

        var intArray = [Int](repeating: 0, count: friends.count) // 선물 지수 배열
        var giftArrays = [[Int]](repeating: [Int](repeating: 0, count: friends.count), count: friends.count) // 선물 현황 배열 [준 사람, 받은 사람]

        // 선물 지수 배열과 선물 현황 배열에 값 세팅
        for gift in gifts {
            let strs = gift.components(separatedBy: " ") // 0 : 준 사람, 1 : 받은 사람
            giftArrays[dict[strs[0]]!][dict[strs[1]]!] += 1
            intArray[dict[strs[0]]!] -= 1
            intArray[dict[strs[1]]!] += 1
        }

        for i in 0..<intArray.count {
            var num = 0 // 선물 받은 개수
            for j in 0..<intArray.count where i != j {
                // 선물을 받아야 하는 조건
                if giftArrays[j][i] < giftArrays[i][j]
                    || (giftArrays[j][i] == giftArrays[i][j] && intArray[i] < intArray[j]) {
                    num += 1
                }
            }

            // 최대 값이라면 최대 값 갱신
            if answer < num {
                answer = num
            }
        }

        return answer
    }
