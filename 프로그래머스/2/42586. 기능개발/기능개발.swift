import Foundation

func solution(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    var answer: [Int] = []
    var daysLeft: [Int] = []

    // 각 기능의 남은 작업일 계산
    for (progress, speed) in zip(progresses, speeds) {
        daysLeft.append(Int(Foundation.ceil(Double(100 - progress) / Double(speed))))
    }

    while !daysLeft.isEmpty {
        // 첫 번째 기능의 작업일수
        let deployDay = daysLeft.removeFirst()
        var count = 1

        // 다음 기능들 중 배포 가능한지 확인
        while !daysLeft.isEmpty && deployDay >= daysLeft.first! {
            daysLeft.removeFirst()
            count += 1
        }

        answer.append(count)
    }

    return answer
}
