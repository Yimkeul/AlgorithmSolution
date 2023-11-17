import Foundation

func solution(_ my_string: String, _ m: Int, _ c: Int) -> String {
    var temp: [String] = []
    var ans: [String] = []

    for i in 1 ... my_string.count {
        let index = my_string.index(my_string.startIndex, offsetBy: i - 1)
        temp.append(String(my_string[index]))
        if i % m == 0 {
            ans.append(temp[c - 1])
            temp = []
        }
    }
    
    return ans.joined()
}