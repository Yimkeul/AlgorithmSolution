import Foundation

let line = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (s, N, K, R1, R2, C1, C2) = (line[0], line[1], line[2], line[3], line[4], line[5], line[6])

    let size = Int(pow(Double(N), Double(s)))

    for i in R1...R2 {
        var row = ""
        for j in C1...C2 {
            row += String(recur(size, i, j, N, K))
        }
        print(row)
    }

    func recur(_ t: Int, _ x: Int, _ y: Int, _ n: Int, _ k: Int) -> Int {
        if t == 1 {
            return 0
        }
        let tmp = t / n
        if (tmp * (n - k) / 2 <= x && x < tmp * (n + k) / 2) && (tmp * (n - k) / 2 <= y && y < tmp * (n + k) / 2) {
            return 1
        }
        return recur(tmp, x % tmp, y % tmp, n, k)
    }