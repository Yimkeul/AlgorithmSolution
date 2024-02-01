func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var ary = [String]()
    var start:Int = p - 1
    var num = 0
    var transNum: String = ""
    
    var temp:[Character] = []
    while ary.count != t {
        transNum = String(num, radix: n)
        temp += Array(transNum)
        
        if temp.count > start {
            if temp[start].isLetter {
                ary.append(String(temp[start].uppercased()))    
            } else {
                ary.append(String(temp[start]))                
            }

            start += m
        } 
            num += 1       
    }
    return ary.joined()
}

