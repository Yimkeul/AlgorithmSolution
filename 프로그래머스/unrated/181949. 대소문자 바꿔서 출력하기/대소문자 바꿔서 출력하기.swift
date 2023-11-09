import Foundation

let s1 = readLine()!


var temp = ""

for i in s1 {
    if i.isLowercase {
        temp += i.uppercased()        
    } else {
        temp += i.lowercased()
    }
}

print(temp)