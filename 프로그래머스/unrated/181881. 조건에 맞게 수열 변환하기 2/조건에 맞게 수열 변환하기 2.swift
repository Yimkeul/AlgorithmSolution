import Foundation

func solution(_ arr:[Int]) -> Int {
    var cnt = 0
    var temp = arr
    var saveAry: [[Int]] = []
    saveAry.append(temp)
    
    
    
    while true {
        temp = logic(temp)
        saveAry.append(temp)
        cnt += 1
        if saveAry[cnt - 1] == saveAry[cnt] {    
        break
       }  
        
    }
    return cnt - 1
}

func logic(_ arr:[Int]) -> [Int] {
    var temp:[Int] = []
    for i in arr {
        if i >= 50 && i % 2 == 0 {
            temp.append(i / 2)
        } else if i < 50 && i % 2 == 1 {
            temp.append(i * 2 + 1)
        } else {
            temp.append(i)
        }
    }
    return temp
}