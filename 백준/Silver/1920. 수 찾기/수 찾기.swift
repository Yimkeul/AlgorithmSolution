import Foundation
Q_1920()
func Q_1920() {
    let N = Int(readLine()!)!
    let A = readLine()!.split { $0 == " " }.map { Int($0)! }
    let _ = Int(readLine()!)!
    let M = readLine()!.split { $0 == " " }.map { Int($0)! }
    
    let ary = A.sorted()
    for m in M {
        print(binarySearch(ary, N, m))
    }

    func binarySearch(_ ary: [Int], _ n: Int, _ key: Int) -> Int {
        var start = 0
        var end = n
        var mid = 0
        while end - start > 0 {
            mid = (start + end) / 2
            if ary[mid] < key {
                start = mid + 1
            } else if ary[mid] == key {
                return 1
            } else {
                end = mid
            }
        }
        return 0
    }
}
