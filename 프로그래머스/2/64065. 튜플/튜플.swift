import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    str = str.replacingOccurrences(of: "{", with: "")
    str = str.replacingOccurrences(of: "}",  with: "")
    var ary:[Int] = str.split { $0 == ","}.map { Int($0)! }
    
    var dic: [Int:Int] = [:]
    
    for i in ary {
        dic[i, default: 0] += 1
    }
    
    var ans = dic.keys.sorted { dic[$0]! > dic[$1]!}
    
    return ans

}