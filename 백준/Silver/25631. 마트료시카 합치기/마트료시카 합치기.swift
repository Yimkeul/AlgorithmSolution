import Foundation
    let _ = Int(readLine()!)!
    var lst = readLine()!.split(separator: " ").compactMap { Int($0) }

    var cnt = 0
    while !lst.isEmpty {
        let temp = Array(Set(lst)).sorted()
        for t in temp {
            if let index = lst.firstIndex(of: t) {
                lst.remove(at: index)
            }
        }
        cnt += 1
    }
    print(cnt)
