import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var map1 = [String]()
    var map2 = [String]()
    
    for i in arr1 {
        var temp = String(i, radix: 2)
        if temp.count < n {
            var diff = n - temp.count
            temp = String(repeating: "0", count : diff) + temp
        }
        map1.append(temp)
    }
    
    for i in arr2 {
        var temp = String(i, radix: 2)
        if temp.count < n {
            var diff = n - temp.count
            temp = String(repeating: "0", count : diff) + temp
        }
        map2.append(temp)
    }
    
    for i in 0 ..< n {
        var map1Text = getChar(map1[i])
        var map2Text = getChar(map2[i])
        var transText = ""
        for j in 0 ..< n {
            if map1Text[j] == "0" && map1Text[j] == map2Text[j] {
                transText += " "
            } else {
                transText += "#"
            }
        }
        answer.append(transText)
    }
    
    return answer
}

func getChar(_ text:String) -> [String] {
    var returnArray = [String]()
    for i in text {
        returnArray.append(String(i))
    }
    return returnArray
}
