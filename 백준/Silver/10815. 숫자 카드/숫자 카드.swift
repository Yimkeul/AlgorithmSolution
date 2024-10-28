import Foundation

func Q_10815() {
    let _ = Int(readLine()!)!
    let aryN = readLine()!.split { $0 == " " }.map { Int($0)! }.sorted()
    let _ = Int(readLine()!)!
    let aryM = readLine()!.split { $0 == " " }.map { Int($0)! }

    for m in aryM {
        print(BinarySearch(aryN, m))
    }

    func BinarySearch(_ ary: [Int], _ key: Int) -> Int {
        var start = 0
        var end = ary.count
        var mid = 0

        while end - start > 0 {
            mid = (start + end) / 2
            if ary[mid] < key {
                start = mid + 1
            } else if ary[mid] > key {
                end = mid
            } else {
                return 1
            }
        }

        return 0
    }
}
Q_10815()