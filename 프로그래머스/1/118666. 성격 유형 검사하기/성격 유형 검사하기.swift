import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
   var dic: [Character: Int] = ["R" : 0, "T" : 0,
                               "C" : 0, "F" : 0,
                               "J" : 0, "M" : 0,
                               "A" : 0, "N" : 0
                              ]
    
    for i in 0 ..< survey.count {
        var neg = survey[i].first!
        var pos = survey[i].last!
        
        switch choices[i] {
            case 1:
                dic[neg]! += 3
            case 2:
                dic[neg]! += 2
            case 3:
                dic[neg]! += 1
            case 5:
                dic[pos]! += 1
            case 6:
                dic[pos]! += 2
            case 7:
                dic[pos]! += 3
            default: 
                dic[neg]! += 0 
                dic[pos]! += 0
        }
    }
    
    var MBTI = ""
    if dic["R"]! >= dic["T"]! {
        MBTI += "R"
    } else {
        MBTI += "T"
    }
    
    if dic["C"]! >= dic["F"]! {
        MBTI += "C"
    } else {
        MBTI += "F"
    }
    
    if dic["J"]! >= dic["M"]! {
        MBTI += "J"
    } else {
        MBTI += "M"
    }
    
    if dic["A"]! >= dic["N"]! {
        MBTI += "A"
    } else {
        MBTI += "N"
    }
    
    
    
    return MBTI
}

