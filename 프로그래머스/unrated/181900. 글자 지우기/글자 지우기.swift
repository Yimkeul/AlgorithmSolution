import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    var indices = indices.sorted()
    print(indices)
    
    var temp:[Int] = [0]
    for i in 0 ..< my_string.count {
        temp.append(0)
    }
    
    for i in indices {
        temp[i] = 1
    }
    
    var ans = ""
    
    for i in 0 ..< my_string.count {
        if temp[i] == 0 {
            let tt = my_string.index(my_string.startIndex, offsetBy : i)
            ans += String(my_string[tt])
        }
    }
    
    
    
    return ans
}