import Foundation

func solution(_ order: [Int]) -> Int {
    var stack = [Int]()
    var index = 0

    for box in 1...order.count {
        if box == order[index] {
            // 메인 벨트에서 바로 처리 가능
            index += 1
        } else {
            // 보조 벨트에 추가
            stack.append(box)
        }

        // 보조 벨트에서 확인 및 처리
        while !stack.isEmpty && stack.last! == order[index] {
            stack.removeLast()
            index += 1
        }
    }

    return index
}

