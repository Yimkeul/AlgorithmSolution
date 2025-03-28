import Foundation

func fourSquares() {
    let n = Int(readLine()!)!

    // 1️⃣ n이 제곱수면 1 반환
    if isPerfectSquare(n) {
        print(1)
        return
    }

    // 2️⃣ n이 두 개의 제곱수 합이면 2 반환
    for i in 1...Int(sqrt(Double(n))) {
        let square = i * i
        if isPerfectSquare(n - square) {
            print(2)
            return
        }
    }

    // 3️⃣ n이 세 개의 제곱수 합이면 3 반환
    for i in 1...Int(sqrt(Double(n))) {
        for j in 1...Int(sqrt(Double(n - i * i))) {
            let square = i * i + j * j
            if isPerfectSquare(n - square) {
                print(3)
                return
            }
        }
    }

    // 4️⃣ 위 조건을 모두 만족하지 않으면 4 반환
    print(4)
}

// 제곱수 판별 함수
func isPerfectSquare(_ num: Int) -> Bool {
    let sqrtNum = Int(sqrt(Double(num)))
    return sqrtNum * sqrtNum == num
}

// 실행
fourSquares()
