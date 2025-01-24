import Foundation

// 좌표 구조체 정의
struct Point {
    let x: Double
    let y: Double
}

// 입력 처리 및 신발끈 공식 구현
func calculatePolygonArea(points: [Point]) -> Double {
    var sum1 = 0.0
    var sum2 = 0.0
    
    for i in 0..<points.count {
        let current = points[i]
        let next = points[(i + 1) % points.count] // 마지막 점과 첫 점 연결
        sum1 += current.x * next.y
        sum2 += current.y * next.x
    }
    
    let area = abs(sum1 - sum2) / 2.0
    return area
}

// 입력 받기
if let n = Int(readLine() ?? ""), n > 2 {
    var points = [Point]()
    for _ in 0..<n {
        if let line = readLine() {
            let coordinates = line.split(separator: " ").map { Double($0)! }
            points.append(Point(x: coordinates[0], y: coordinates[1]))
        }
    }
    
    // 다각형 넓이 계산
    let area = calculatePolygonArea(points: points)
    print(String(format: "%.1f", area)) // 소수점 첫째 자리까지 출력
}
