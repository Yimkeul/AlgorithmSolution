func solution(_ msg:String) -> [Int] {
    let alpa = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var dic:[String:Int] = [:]
    var cnt:Int = 1
    
    for char in alpa {
        dic[String(char)] = cnt
        cnt += 1
    }
    ////////////////////
    
    var lastValue = 27
    var current = ""
    var ans = [Int]()
    
    for char in msg {
        let currentChar = String(char)
        let combined = current + currentChar
        if dic[combined] != nil {
            current = combined
        } else {
            ans.append(dic[current]!)
            dic[combined] = lastValue
            lastValue += 1
            current = currentChar
        }
        
    }
    ans.append(dic[current]!)
    
    
    return ans
}