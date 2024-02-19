import Foundation

func solution(_ book_time:[[String]]) -> Int {    
    var rooms: [[Int]] = Array(repeating:[], count: book_time.count)
    var book_time = book_time.sorted {
        toMin($0[0]) < toMin($1[0])
    }
    
    for book in book_time {
        if rooms[0].isEmpty {
            let first:[Int] = [toMin(book_time[0][0]), toMin(book_time[0][1]) + 10]
            rooms[0].append(contentsOf: first)
            continue
        }
        for index in 0 ..< rooms.count {
            let target:[Int] = [toMin(book[0]), toMin(book[1]) + 10]
            if rooms[index].isEmpty {
                  rooms[index].append(contentsOf: target)
                    break
            } else {
                if toMin(book[0]) >= rooms[index][rooms[index].count - 1] {
                    rooms[index].append(contentsOf: target)
                    break
                }   
            }
        }
    }
    
    var ans: Int = 0
    for i in rooms {
        if !i.isEmpty {
            ans += 1
        }
    }
    
    return ans
}

func toMin(_ time: String) -> Int {
    let time = time.split { $0 == ":" }.map { Int($0)! }
    return time[0] * 60 + time[1]
}