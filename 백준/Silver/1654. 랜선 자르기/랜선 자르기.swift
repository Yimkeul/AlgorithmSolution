import Foundation

func Q_1654() {
    let KN = readLine()!.split { $0 == " "}.map { Int($0)! }
    let (K,N) = (KN[0], KN[1])
    var aryLan = [Int]()
    for _ in 0 ..< K {
        aryLan.append(Int(readLine()!)!)
    }
    aryLan.sort()
    
    print(BinarySearch(aryLan))
    
    func BinarySearch(_ ary:[Int]) -> Int {
        var start = 1
        guard var end = ary.last else {
            return 0
        }
        var mid = 0
        var result = 0
        while end - start >= 0 {
            mid = (start + end) / 2
            var temp = 0
            for line in ary {
                temp += line / mid
            }
            
            if temp >= N {
                if result < mid {
                    result = mid
                }
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        return result
    }
}
Q_1654()
