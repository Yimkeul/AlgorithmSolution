import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    let len = my_strings.count
    var ans = ""
    for i in 0 ..< len {
        let s = parts[i][0]
        let e = parts[i][1]
        for j in s ... e {
            let temp = my_strings[i].index(my_strings[i].startIndex, offsetBy: j)    
            ans += String(my_strings[i][temp])
        }
    }
    return ans
}