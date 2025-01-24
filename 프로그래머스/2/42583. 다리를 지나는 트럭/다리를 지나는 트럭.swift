import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    var time = 0
    var bridgeQueue = Array(repeating: 0, count: bridge_length) // 다리 위 트럭 상태 관리
    var currentWeight = 0 // 현재 다리 위 트럭의 총 무게
    var truckIndex = 0 // 대기 트럭의 인덱스

    while truckIndex < truck_weights.count {
        // 1. 시간 경과
        time += 1

        // 2. 다리의 첫 번째 칸에서 트럭이 내려옴
        currentWeight -= bridgeQueue.removeFirst()

        // 3. 대기 중인 트럭이 다리에 올라갈 수 있는지 확인
        if currentWeight + truck_weights[truckIndex] <= weight {
            bridgeQueue.append(truck_weights[truckIndex]) // 트럭이 다리에 올라감
            currentWeight += truck_weights[truckIndex]
            truckIndex += 1
        } else {
            bridgeQueue.append(0) // 트럭이 올라가지 못하면 빈 칸 유지
        }
    }

    // 4. 마지막 트럭이 다리를 건너는 시간 추가
    return time + bridge_length
}
