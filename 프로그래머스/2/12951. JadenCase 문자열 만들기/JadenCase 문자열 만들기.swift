func solution(_ s:String) -> String {
    let Strings = s.components(separatedBy: " ").map { String($0) }
    var ans = ""
    var ansArray = [String]()
    for word in Strings {
        var temp = Array(word)
        var tempString = ""
        for w in 0 ..< temp.count {
            if String(temp[0]) == "" {
                if w == 1 || w == 0 {
                    tempString += String(temp[w].uppercased())
                } else {
                    tempString += String(temp[w].lowercased())
                }
            } else {
                if w == 0 {
                    tempString += String(temp[w].uppercased())
                } else {
                    tempString += String(temp[w].lowercased())
                }    
            }
            
            
        }
        ansArray.append(tempString)
    }
    
    ans = ansArray.joined(separator: " ")
    // _ = ansArray.map { print($0, terminator: " ")}
    return ans
}