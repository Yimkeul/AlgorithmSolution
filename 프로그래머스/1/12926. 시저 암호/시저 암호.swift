func solution(_ s:String, _ n:Int) -> String {
    let lowCase = "abcdefghijklmnopqrstuvwxyz"
    let upCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    // 26자
    
    var result:String = ""
    
    for char in s {
        var str = String(char)
        
        if lowCase.contains(str) {
            let strIdx = lowCase.firstIndex(of: char)!
            let dis = Int(lowCase.distance(from: lowCase.startIndex, to: strIdx))
            let target = (dis + n) % 26
            let targetChar = lowCase[lowCase.index(lowCase.startIndex, offsetBy: target)]
            result += String(targetChar)
        } 
        
        if upCase.contains(str) {
            let strIdx = upCase.firstIndex(of: char)!
            let dis = Int(upCase.distance(from: upCase.startIndex, to: strIdx))
            let target = (dis + n) % 26
            let targetChar = upCase[upCase.index(upCase.startIndex, offsetBy: target)]
            result += String(targetChar)
        }
        
        if str == " " {
            result += " "
        } 
        
        
    }
    return result
}