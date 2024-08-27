import Foundation
let _ = Double(readLine()!)!
    let input = readLine()!.components(separatedBy: " ").map { Double($0)! }

    var list = [input[0]]
    input.forEach { element in
        if element == list.last {
            return
        } else if element > list.last! {
            list.append(element)
        } else {
            let position = lowerBound(arr: list, n: list.count, key: element)
            list[position] = element
        }
    }
    print(list.count)

    func lowerBound(arr: [Double], n: Int, key: Double) -> Int {
        var start: Int = 0
        var end: Int = n

        var mid: Int = n

        while end - start > 0 {
            mid = (start + end) / 2

            if arr[mid] < key {
                start = mid + 1
            } else {
                end = mid
            }
        }
        return end
    }
