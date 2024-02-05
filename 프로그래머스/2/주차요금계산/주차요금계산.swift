import Foundation

struct car {
    let time: String
    let num: String
    let state: String
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var record:[(String, [(String, String)])] = []
    
    var ansBefore = [(String,Int)]()
    var ans = [Int]()
    
    func addValue(key: String, value:[(String,String)]) {
    if let index = record.firstIndex(where: { $0.0 == key }) {
        record[index].1 += value
    } else {
        record.append((key, value))
    }
}
    
    
    for index in records {
        let item = index.split { $0 == " "}
        addValue(key: String(item[1]), value: [( String(item[0]), String(item[2]))])
    }
    
    
    for index in 0 ..< record.count {
        if record[index].1.count % 2 == 1 {
            record[index].1 += [("23:59","OUT")]
        }
    }
    
    for index in 0 ..< record.count {
        var value:Int = 0
        var addValue:Int = 0
        
        for money in 0 ..< record[index].1.count {
            var time:String = String(record[index].1[money].0)
            var state:String = String(record[index].1[money].1)
            
             if money % 2 == 1 {
            value += hTom(String(record[index].1[money].0))  - hTom(String(record[index].1[money - 1].0))
           }
        }
            if value < fees[0] {
                addValue = fees[1]
            } else {
                addValue = fees[1] + Int(ceil(Double(value - fees[0]) / Double(fees[2]))) * fees[3]     
            }
            
        ansBefore.append((String(record[index].0), addValue))
    }
    ansBefore = ansBefore.sorted { $0.0 < $1.0 }
    for i in ansBefore {
        ans.append(i.1)
    }
    print(ans)
    return ans
}



func hTom(_ date:String) -> Int {
    let time = date.split { $0 == ":"}
    return Int(time[0])! * 60 + Int(time[1])!
}