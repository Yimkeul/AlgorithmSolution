import Foundation

func solution(_ want: [String], _ number: [Int], _ discount: [String]) -> Int {
    var result = 0
    
    var wanted:[String:Int] = [:]
    for i in 0 ..< want.count {
        wanted[want[i]] = number[i]
    }
    
    for i in 0..<discount.count {
        var temp = wanted   
        // print("tt : " ,i + 10, discount.count)
        for day in i ..< i + 10 where i + 10 <= discount.count {
            guard let value =  temp[discount[day]] else {
                continue
            }
            temp[discount[day]] = value - 1
        }
        
        
        let allZeros = temp.values.allSatisfy { $0 == 0 }
        if allZeros {
            result += 1
        }
        // print(temp , i, result)
    }

    return result
}
