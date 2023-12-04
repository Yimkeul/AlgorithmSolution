import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var value: [String:Int] = [:]
    var ans:[Int] = []
    for i in 0 ..< name.count {
        value[name[i]] = yearning[i]
    }
    print(value)
    
    for ph in photo {
        var sum = 0
        for i in ph {
            guard let val = value[i] else {
                continue
            }
            sum += val
        }
        ans.append(sum)
    }
    return ans
}