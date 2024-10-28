import Foundation

func Q_2776() {
    let T = Int(readLine()!)!
    for _ in 0 ..< T {
        let _ = Int(readLine()!)!
        let note1 = readLine()!.split { $0 == " "}.map { Int($0)! }.sorted()
        let _ = Int(readLine()!)!
        let note2 = readLine()!.split { $0 == " "}.map { Int($0)! }

        for n in note2 {
            print(binarySearch(note1, n))
        }
    }
    
    
    func binarySearch(_ ary: [Int], _ key: Int) -> Int {
        var start = 0
        var end = ary.count
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
Q_2776()