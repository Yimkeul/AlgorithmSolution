import Foundation

struct Point: Hashable {
    let x1: Int
    let y1: Int
    let x2: Int
    let y2: Int
    
    init(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) {
        // 두 점을 정렬하여 항상 같은 방향으로 저장
        if x1 < x2 || (x1 == x2 && y1 < y2) {
            self.x1 = x1
            self.y1 = y1
            self.x2 = x2
            self.y2 = y2
        } else {
            self.x1 = x2
            self.y1 = y2
            self.x2 = x1
            self.y2 = y1
        }
    }
}

func solution(_ dirs: String) -> Int {
    var visited = Set<Point>()
    var now = (0, 0)
    
    for d in dirs {
        let (x, y) = now
        var next = now
        
        switch d {
        case "U": next = (x, y + 1)
        case "D": next = (x, y - 1)
        case "R": next = (x + 1, y)
        case "L": next = (x - 1, y)
        default: break
        }
        
        // 유효한 범위 확인
        if isValid(next.0, next.1) {
            visited.insert(Point(x, y, next.0, next.1))
            now = next
        }
    }
    
    return visited.count
}

func isValid(_ x: Int, _ y: Int) -> Bool {
    return x >= -5 && x <= 5 && y >= -5 && y <= 5
}
