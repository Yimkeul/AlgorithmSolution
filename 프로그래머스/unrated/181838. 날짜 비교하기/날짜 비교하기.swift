import Foundation

func solution(_ date1: [Int], _ date2: [Int]) -> Int {
    guard let d1 = makeDate(date1), let d2 = makeDate(date2) else {
        return 0
    }
    return d1 < d2 ? 1 : 0
}

func makeDate(_ date: [Int]) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    return dateFormatter.date(from: "\(date[0])-\(date[1])-\(date[2])")
}