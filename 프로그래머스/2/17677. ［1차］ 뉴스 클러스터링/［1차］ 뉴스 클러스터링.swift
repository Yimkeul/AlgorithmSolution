import Foundation

func solution(_ str1:String, _ str2:String) -> Int {

    var ans = 0
    
    // let str1 = isAlpa(str1.lowercased())
    // let str2 = isAlpa(str2.lowercased())
    let str1 = str1.lowercased()
    let str2 = str2.lowercased()
    // print(str1,str2)
    
    var ary1: [String] = []
    for i in 0 ..< (str1.count - 1) {
        let f = str1.index(str1.startIndex, offsetBy: i)
        let s = str1.index(str1.startIndex, offsetBy: i + 1)
        let w =  String(str1[f]) + String(str1[s])
        if isAlpa(w).count == 2 {
            ary1.append(w)
        }
           
        
    }

    var ary2: [String] = []
    for i in 0 ..< (str2.count - 1) {
        let f = str2.index(str2.startIndex, offsetBy: i)
        let s = str2.index(str2.startIndex, offsetBy: i + 1)
        let w =  String(str2[f]) + String(str2[s])
        if isAlpa(w).count == 2{
            ary2.append(w)    
        }
    }
    
    print(ary1, ary2)
    var union = ary1.count + ary2.count
    var intersection = 0
    
    for i in ary1.indices {
        for j in ary2.indices {
            if ary1[i] == ary2[j] {
                intersection += 1
                ary2.remove(at: j)
                break
            }
         }
    }
    
    union -= intersection
    // intersection / union
    // if union == 0 {
    //     return 65536
    // } else {
    //     ans = Int(Double(intersection) / Double(union) * 65536)
    // }
    
    return union == 0 ? 65536 : Int(Double(intersection) / Double(union) * 65536)
    
    
    return ans
}

func isAlpa(_ str: String) -> String {
    let lowAlpaSet = CharacterSet.lowercaseLetters
    let filters = str.components(separatedBy: lowAlpaSet.inverted).joined(separator: "")
    
    return filters
}