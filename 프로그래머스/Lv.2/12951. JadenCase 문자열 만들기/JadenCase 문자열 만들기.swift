func solution(_ s: String) -> String {
    var temp = s.components(separatedBy: " ")
    
    var ansAry:[String] = []
    for i in temp {
        var trans: String = ""
        guard let F = i.first else {
            ansAry.append("")
            continue
        }
        
        if F.isLetter {
            trans = F.uppercased() + String(i.dropFirst()).lowercased()
            ansAry.append(trans)
        } else {
            trans = String(F) + String(i.dropFirst()).lowercased()
            ansAry.append(trans)
        }
          
    }    
    
    return String(ansAry.map{$0 + " "}.joined().dropLast())
    
}
