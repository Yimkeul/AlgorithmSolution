
/*
h e l l o w o r l d  cnt = 10
0 1 2 3 4 5 6 7 8 9 
lloworl (2 ~ 8) // cnt = 7
cnt == 3

10 - s - cnt = 
s + cnt = 9



*/
import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    let s1_len = my_string.count
    let s2_len = overwrite_string.count
    let s_len = s + s2_len
    
    let temp1 = "%@"
    
    var ans = ""
    
    for i in 0 ..< s1_len {
        if i < s {
            let index = my_string.index(my_string.startIndex, offsetBy: i)
            ans += String(my_string[index])
        }
        else {
            ans += temp1
            break
        }
    }
    
    for i in s_len ..< s1_len {
        let index = my_string.index(my_string.startIndex, offsetBy: i)
            ans += String(my_string[index])
    }
    ans = ans.replacingOccurrences(of: "%@", with: overwrite_string)
    print(ans)

    return ans
}